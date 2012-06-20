/// 
/// @file MBEntity.m
/// @author Joachim LeBlanc
/// @date June 19 2012
/// @copyright 
///   2012 Joachim LeBlanc <demosdemon@gmail.com> \n
///   This program is made available under the terms of the MIT License.
/// 
/// @brief Base class for all entities

#import "MB.h"

#define StringEqual(string1, string2) ([((NSString *)string1) caseInsensitiveCompare:((NSString *)string2)])

#define kISRC_Regex           @"^[A-Z{2}[A-Z0-9]{3}[0-9]{2}[0-9]{5}$"
#define kUUID_Regex           @"^[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$"

#define kErrorKey        @"error"
#define kListKey         @"list"
#define kMetadataKey     @"metadata"
#define kLifespanKey     @"lifespan"
#define kTextRepresentationKey @"text-representation"
#define kIPIKey          @"ipi"
#define kArtistKey       @"artist"
#define kReleaseKey      @"release"
#define kReleaseGroupKey @"release-group"
#define kRecordingKey    @"recording"
#define kLabelKey        @"label"
#define kWorkKey         @"work"
#define kDiscKey         @"disc"
#define kPUIDKey         @"puid"
#define kISRCKey         @"isrc"
#define kArtistCreditKey @"artist-credit"
#define kNameCreditKey   @"name-credit"
#define kRelationKey     @"relation"
#define kAttributeKey    @"attribute"
#define kAliasKey        @"alias"
#define kISWCKey         @"iswc"
#define kTagKey          @"tag"
#define kUserTagKey      @"user-tag"
#define kRatingKey       @"rating"
#define kUserRatingKey   @"user-rating"
#define kLabelInfoKey    @"label-info"
#define kMediumKey       @"medium"
#define kTrackKey        @"track"
#define kAnnotationKey   @"annotation"
#define kCDStubKey       @"cdstub"
#define kFreeDBDiscKey   @"freedb-disc"
#define kNonMBTrackKey   @"nonmb-track"
#define kCollectionKey   @"collection"

@implementation MBEntity

- (void) parseElement:(NSXMLElement *)element
{
  if (!element) return;
  for (NSXMLNode *attr in [element attributes])
    [_attributes setValue:[attr stringValue]
                   forKey:[attr localName]];
  for (NSXMLElement *elem in [element children])
    [_elements setValue:[MBEntity xmlNodeToObject:elem
                                    previousValue:[_elements objectForKey:[elem localName]]]
                 forKey:[elem localName]];
}

@synthesize ExtraAttributes = _attributes;
@synthesize ExtraElements   = _elements;

- (id) init
{
  if (self = [super init]) {
    _attributes = [NSMutableDictionary dictionary];
    _elements   = [NSMutableDictionary dictionary];
  }
  return self;
}

- (id) initWithElement:(NSXMLElement *)element
{
  if (self = [self init]) {
    [self parseElement:element];
  }
  return self;
}

+ (id) entityWithElement:(NSXMLElement *)element
{
  return [[self alloc] initWithElement:element];
}

+ (id) xmlNodeToObject:(NSXMLNode *)element previousValue:(id)previous
{
  if (!element) return previous;
  id result = nil;
  
  if (previous) {
    if ([previous isKindOfClass:[NSArray class]]) {
      result = [NSMutableArray arrayWithArray:previous];
      [result addObject:[MBEntity xmlNodeToObject:element previousValue:nil]];
    } else {
      result = [NSMutableArray arrayWithObject:previous];
      [result addObject:[MBEntity xmlNodeToObject:element previousValue:nil]];
    }
  } else {
    if ([element childCount] == 0 &&
        (![element isKindOfClass:[NSXMLElement class]] || [[(NSXMLElement*)element attributes] count] == 0)) {
      result = [element stringValue];
    } else {
      result = [NSMutableDictionary dictionary];
      if ([element isKindOfClass:[NSXMLElement class]])
        for (NSXMLNode *attr in [(NSXMLElement*)element attributes])
          [result setValue:[attr stringValue] forKey:[NSString stringWithFormat:@"@%@", [attr localName]]];
      for (NSXMLNode *elem in [element children])
        [result setValue:[MBEntity xmlNodeToObject:elem
                                     previousValue:[result objectForKey:[elem localName]]]
                  forKey:[elem localName]];
    }
  }
  return result;
}

+ (id) xmlElementToEntity:(NSXMLElement *)element
{
  NSString *name = [element localName];
  
  if (StringEqual([name substringFromIndex:[name length]-4], kListKey))
    return [MBList entityWithElement:element];
  else if (StringEqual(name, kErrorKey))
    return [MBError entityWithElement:element];
  else if (StringEqual(name, kMetadataKey))
    return [MBMetadata entityWithElement:element];
  else if (StringEqual(name, kLifespanKey))
    return [MBLifeSpan entityWithElement:element];
  else if (StringEqual(name, kTextRepresentationKey))
    return [MBTextRepresentation entityWithElement:element];
  else if (StringEqual(name, kIPIKey))
    return [MBIPI entityWithElement:element];
  else if (StringEqual(name, kArtistKey))
    return [MBArtist entityWithElement:element];
  else if (StringEqual(name, kReleaseKey))
    return [MBRelease entityWithElement:element];
  else if (StringEqual(name, kReleaseGroupKey))
    return [MBReleaseGroup entityWithElement:element];
  else if (StringEqual(name, kRecordingKey))
    return [MBRecording entityWithElement:element];
  else if (StringEqual(name, kLabelKey))
    return [MBLabel entityWithElement:element];
  else if (StringEqual(name, kWorkKey))
    return [MBWork entityWithElement:element];
  else if (StringEqual(name, kDiscKey))
    return [MBDisc entityWithElement:element];
  else if (StringEqual(name, kPUIDKey))
    return [MBPUID entityWithElement:element];
  else if (StringEqual(name, kISRCKey))
    return [MBISRC entityWithElement:element];
  else if (StringEqual(name, kArtistCreditKey))
    return [MBArtistCredit entityWithElement:element];
  else if (StringEqual(name, kNameCreditKey))
    return [MBNameCredit entityWithElement:element];
  else if (StringEqual(name, kRelationKey))
    return [MBRelation entityWithElement:element];
  else if (StringEqual(name, kAttributeKey))
    return [MBAttribute entityWithElement:element];
  else if (StringEqual(name, kAliasKey))
    return [MBAlias entityWithElement:element];
  else if (StringEqual(name, kISWCKey))
    return [MBISWC entityWithElement:element];
  else if (StringEqual(name, kTagKey))
    return [MBTag entityWithElement:element];
  else if (StringEqual(name, kUserTagKey))
    return [MBUserTag entityWithElement:element];
  else if (StringEqual(name, kRatingKey))
    return [MBRating entityWithElement:element];
  else if (StringEqual(name, kUserRatingKey))
    return [MBUserRating entityWithElement:element];
  else if (StringEqual(name, kLabelInfoKey))
    return [MBLabelInfo entityWithElement:element];
  else if (StringEqual(name, kMediumKey))
    return [MBMedium entityWithElement:element];
  else if (StringEqual(name, kTrackKey))
    return [MBTrack entityWithElement:element];
  else if (StringEqual(name, kAnnotationKey))
    return [MBAnnotation entityWithElement:element];
  else if (StringEqual(name, kCDStubKey))
    return [MBCDStub entityWithElement:element];
  else if (StringEqual(name, kFreeDBDiscKey))
    return [MBFreeDbDisc entityWithElement:element];
  else if (StringEqual(name, kNonMBTrackKey))
    return [MBNonMbTrack entityWithElement:element];
  else if (StringEqual(name, kCollectionKey))
    return [MBCollection entityWithElement:element];

  NSLog(@"Entity %@ did not match", name);
  return [MBEntity entityWithElement:element];
}

+ (BOOL) validatePUID:(NSString *)puid
{
  // TODO: Implementation
}

+ (BOOL) validateISRC:(NSString *)isrc
{
  // TODO: Implementation
}



@end
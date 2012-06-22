/// 
/// @file MBEntity.m
/// @author Joachim LeBlanc
/// @date June 19 2012
/// @copyright 
///   2012 Joachim LeBlanc <demosdemon@gmail.com> \n
///   This program is made available under the terms of the MIT License.
/// 
/// @brief Base class for all entities

#if ! __has_feature(objc_arc)
# warning This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif

#import "MB.h"

#define kStringEqual(string1, string2) ([((NSString *)string1) caseInsensitiveCompare:((NSString *)string2)])

#define kISRC_Regex @"^[A-Z{2}[A-Z0-9]{3}[0-9]{2}[0-9]{5}$"
#define kUUID_Regex @"^[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$"

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
  if (!element) return nil;
  
  NSString *name = [element localName];
  
  Class type = [[MBEntity keyToClassDictionary] objectForKey:name];
  if (type && [type isSubclassOfClass:[MBEntity class]])
    return [type entityWithElement:element];

  NSLog(@"Entity %@ did not match", name);
  return [MBEntity entityWithElement:element];
}

+ (BOOL) validatePUID:(NSString *)puid
{
  NSError *error = nil;
  NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:kUUID_Regex options:0 error:&error];
  if (error) return NO;
  return ([[regex matchesInString:puid options:0 range:NSMakeRange(0, [puid length])] count] == 1);
}

+ (BOOL) validateISRC:(NSString *)isrc
{
  NSError *error = nil;
  NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:kISRC_Regex options:0 error:&error];
  if (error) return NO;
  return ([[regex matchesInString:isrc options:0 range:NSMakeRange(0, [isrc length])] count] == 1);
}

+ (NSDictionary *) keyToClassDictionary
{
  static NSDictionary *dict = nil;
  static dispatch_once_t pred;
  dispatch_once(&pred, ^{
    dict = @{
      kErrorKey : [MBError class],
      kListKey : [MBList class],
      kMetadataKey : [MBMetadata class],
      kLifespanKey : [MBLifeSpan class],
      kTextRepresentationKey : [MBTextRepresentation class],
      kIPIKey : [MBIPI class],
      kArtistKey : [MBArtist class],
      kReleaseKey : [MBRelease class],
      kReleaseGroupKey : [MBReleaseGroup class],
      kRecordingKey : [MBRecording class],
      kLabelKey : [MBLabel class],
      kWorkKey : [MBWork class],
      kDiscKey : [MBDisc class],
      kPUIDKey : [MBPUID class],
      kISRCKey : [MBISRC class],
      kArtistCreditKey : [MBArtistCredit class],
      kNameCreditKey : [MBNameCredit class],
      kRelationKey : [MBRelation class],
      kAttributeKey : [MBAttribute class],
      kAliasKey : [MBAlias class],
      kISWCKey : [MBISWC class],
      kTagKey : [MBTag class],
      kUserTagKey : [MBUserTag class],
      kRatingKey : [MBRating class],
      kUserRatingKey : [MBUserRating class],
      kLabelInfoKey : [MBLabelInfo class],
      kMediumKey : [MBMedium class],
      kTrackKey : [MBTrack class],
      kAnnotationKey : [MBAnnotation class],
      kCDStubKey : [MBCDStub class],
      kFreeDBDiscKey : [MBFreeDbDisc class],
      kNonMBTrackKey : [MBNonMbTrack class],
      kCollectionKey : [MBCollection class],
    };
  });
  return dict;
}

@end
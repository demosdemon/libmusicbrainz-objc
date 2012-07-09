// 
// @file MBEntity.m
// @author Joachim LeBlanc
// @date June 19 2012
// @copyright 
//   2012 Joachim LeBlanc <demosdemon@gmail.com> \n
//   This program is made available under the terms of the MIT License.
// 
// @brief Base class for all entities

#if ! __has_feature(objc_arc)
# warning This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif

#import "MB.h"

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

@implementation NSString (MBKeyManipulation)

- (NSString *) elementToKey
{
  NSScanner * scanner = [NSScanner scannerWithString:self];
  [scanner setCharactersToBeSkipped:[NSCharacterSet characterSetWithCharactersInString:@"-"]];
  NSMutableString * key = [NSMutableString string];
  NSString * string = nil;
  BOOL caps = NO;
  while ([scanner scanUpToString: @"-" intoString: &string])
  {
    if (caps)
      string = [string capitalizedString];
    [key appendString: string];
    caps = YES;
  }
  return key;
}

- (NSString *) capitalizedElementToKey
{
  NSScanner * scanner = [NSScanner scannerWithString:self];
  [scanner setCharactersToBeSkipped:[NSCharacterSet characterSetWithCharactersInString:@"-"]];
  NSMutableString * key = [NSMutableString string];
  NSString * string = nil;
  while ([scanner scanUpToString: @"-" intoString: &string])
  {
    string = [string capitalizedString];
    [key appendString: string];
  }
  return key;
}

- (Class) classForElementName
{
  if ([[self substringFromIndex:self.length-4] equals:kListKey])
    return [MBList class];
  
  Class type = NSClassFromString([@"MB" stringByAppendingString:[self capitalizedElementToKey]]);
  if (type) return type;
  
  NSLog(@"Entity %@ did not match", self);
  return [MBEntity class];
}

- (NSString *) classNameToKey
{
  static NSString * _regex = @"([a-z])([A-Z])";
  NSError * error = nil;
  NSRegularExpression * regex = [NSRegularExpression regularExpressionWithPattern:_regex options:0 error:&error];
  if (!regex) {
    NSLog(@"%@", error);
    return self;
  }
  return [[regex stringByReplacingMatchesInString:self options:0 range:NSMakeRange(0, self.length) withTemplate:@"$1-$2"] lowercaseString];
}

- (BOOL) validatePUID
{
  NSError *error = nil;
  NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:kUUID_Regex options:0 error:&error];
  if (error) return NO;
  return ([[regex matchesInString:self options:0 range:NSMakeRange(0, self.length)] count] == 1);
}

- (BOOL) validateISRC
{
  NSError *error = nil;
  NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:kISRC_Regex options:0 error:&error];
  if (error) return NO;
  return ([[regex matchesInString:self options:0 range:NSMakeRange(0, self.length)] count] == 1);
}

- (BOOL) equals:(NSString *)other
{
  return [self caseInsensitiveCompare:other] == NSOrderedSame;
}

- (BOOL) empty
{
  return (!self || [self equals:@""]);
}

- (SEL) setterSelector
{
  return NSSelectorFromString([NSString stringWithFormat:@"set%@:", [self capitalizedElementToKey]]);
}

@end

@implementation MBEntity

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

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
- (void) parseElement:(NSXMLElement *)element
{
  if (!element) return;
  
  for (NSXMLNode * attr in [element attributes]) {
    SEL setter = [[attr localName] setterSelector];
    if ([self respondsToSelector:setter])
      [self performSelector:setter withObject:attr];
    else 
      [self setValue:attr forUndefinedKey:[attr localName]];
  }
  for (NSXMLElement * elem in [element children]) {
    SEL setter = [[elem localName] setterSelector];
    if ([self respondsToSelector:setter])
      [self performSelector:setter withObject:elem];
    else 
      [self setValue:elem forUndefinedKey:[elem localName]];
  }
}
#pragma clang diagnostic pop

+ (id) entityWithElement:(NSXMLElement *)element
{
  return [[self alloc] initWithElement:element];
}

+ (id) xmlElementToEntity:(NSXMLElement *)element
{
  if (!element) return nil;
  Class type = [[element localName] classForElementName];
  return [type entityWithElement:element];
}

- (void) setValue:(id)value forUndefinedKey:(NSString *)key
{
  if ([value isKindOfClass:[NSString class]])
    [_attributes setObject:[value stringValue] forKey:[key substringFromIndex:1]];
  else 
    [_elements setObject:[MBEntity xmlElementToEntity:value] forKey:key];
}

- (NSString *) elementName
{
  if ([self isMemberOfClass:[MBEntity class]]) return @"";
  return [[NSStringFromClass([self class]) substringFromIndex:2] classNameToKey];
}

@end

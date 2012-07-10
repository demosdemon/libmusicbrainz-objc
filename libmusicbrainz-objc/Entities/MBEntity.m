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

#import "../MB.h"
#import "../NSString+MBKeyManipulation.h"

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
  if (!element) return nil;
  
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
  if (!element) return nil;
  return [[self alloc] initWithElement:element];
}

- (void) setValue:(id)value forUndefinedKey:(NSString *)key
{
  if ([value isKindOfClass:[NSString class]])
    [_attributes setObject:value forKey:key];
  else 
    [_elements setObject:value forKey:key];
}

- (NSString *) elementName
{
  if ([self isMemberOfClass:[MBEntity class]]) return @"";
  return [[NSStringFromClass([self class]) substringFromIndex:2] classNameToKey];
}

@end

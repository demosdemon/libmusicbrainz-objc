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
#import <objc/runtime.h>

@implementation MBEntity

@synthesize ExtraAttributes = _ExtraAttributes;
@synthesize ExtraElements   = _ExtraElements;
@synthesize Text            = _Text;

- (id) init
{
  if (self = [super init]) {
    _ExtraAttributes = [NSMutableDictionary dictionary];
    _ExtraElements   = [NSMutableDictionary dictionary];
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

- (NSString *) description
{
  NSString * classname = NSStringFromClass([self class]);
  NSString * Id;
  if ([self respondsToSelector:@selector(Id)])
    Id = [self performSelector:@selector(Id)];
  else
    Id = self.Text;
  return [NSString stringWithFormat:@"%@ %@", classname, Id];
}

- (id) initWithCoder:(NSCoder *)aDecoder
{
  if (self = [self init]) {
    Class currentClass = [self class];
    do {
      uint varCount;
      Ivar * vars = class_copyIvarList(currentClass, &varCount);
      for (uint i = 0; i < varCount; i++) {
        Ivar var = vars[i];
        NSString * key = [NSString stringWithUTF8String:ivar_getName(var)];
        id obj = [aDecoder decodeObjectForKey:key];
        if (obj) {
          DLog(@"Decoding %@ = %@", key, obj);
          object_setIvar(self, var, obj);
        }
      }
      currentClass = class_getSuperclass(currentClass);
    } while (currentClass != [MBEntity class]);
  }
  return self;
}

- (void) encodeWithCoder:(NSCoder *)aCoder
{
  Class currentClass = [self class];
  do {
    uint varCount;
    Ivar * vars = class_copyIvarList(currentClass, &varCount);
    for (uint i = 0; i < varCount; i++) {
      Ivar var = vars[i];
      id obj = object_getIvar(self, var);
      if (obj) {
        NSString * key = [NSString stringWithUTF8String:ivar_getName(var)];
        DLog(@"Encoding %@ = %@", key, obj);
        [aCoder encodeObject:obj forKey:key];
      }
    }
    currentClass = class_getSuperclass(currentClass);
  } while (currentClass != [MBEntity class]);
}

- (void) parseElement:(NSXMLElement *)element
{
  if ([element respondsToSelector:@selector(attributes)])
    for (NSXMLNode * attr in [element attributes])
      [self setValue:attr.stringValue forKey:[attr.localName capitalizedElementToKey]];
  
  if ([element respondsToSelector:@selector(children)])
    for (NSXMLElement * elem in [element children])
      [self setValue:[MBEntity entityWithElement:elem] forKey:[elem.localName capitalizedElementToKey]];
  
  if ([element respondsToSelector:@selector(stringValue)])
       _Text = element.stringValue;
}

+ (id) entityWithElement:(NSXMLElement *)element
{
  if (!element) return nil;
  return [[[element.localName classForElementName] alloc] initWithElement:element];
}

- (void) setValue:(id)value forUndefinedKey:(NSString *)key
{
  if ([value isKindOfClass:[NSString class]])
    [_ExtraAttributes setObject:value forKey:key];
  else 
    [_ExtraElements setObject:value forKey:key];
}

- (NSString *) elementName
{
  if ([self isMemberOfClass:[MBEntity class]]) return @"";
  return [NSStringFromClass([self class]) classNameToKey];
}

@end

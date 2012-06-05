/// 
/// @file MBEntity.m
/// @author Joachim LeBlanc
/// @date May 13 2012
/// @copyright 
///   2012 Joachim LeBlanc <demosdemon@gmail.com> \n
///   This program is made available under the terms of the MIT License.
/// 
/// @brief Base class for all entities

#import "MB.h"
#import "MBEntity-protected.h"
#import "XMLReader.h"

@implementation MBEntity 

- (id) init {
  // This should never be called, entities with no internal dictionaries are useless
  self = nil;
  return nil;
}

- (id) initWithDict:(NSDictionary*)dict {
  if (dict == nil || [dict count] == 0)
    return [self init];
  
  self = [super init];
  if (self) {
    _dict = [NSDictionary dictionaryWithDictionary:dict];
  }
  return self;
}

- (id) initWithXml:(NSString*)xml {
  NSError *error = nil;
  return [self initWithXml:xml Error:&error];
}

- (id) initWithXml:(NSString*)xml 
             Error:(NSError**)error {
  return [self initWithDict:[XMLReader dictionaryForXMLString:xml error:error]];
}


- (id) initWithXmlData:(NSData*)xml {
  NSError *error = nil;
  return [self initWithXmlData:xml Error:&error];
}

- (id) initWithXmlData:(NSData*)xml 
                 Error:(NSError**)error {
  return [self initWithDict:[XMLReader dictionaryForXMLData:xml error:error]];
}
- (id) getExtraAttributeByName:(NSString*)name {
  return [_dict objectForKey:[NSString stringWithFormat:@"@%@", name]];
}

- (id) getExtraElementByName:(NSString*)name {
  return [_dict objectForKey:name];
}

- (NSArray *) list:(id)list type:(Class)type {
  if ([list isKindOfClass:[NSArray class]]) {
    NSMutableArray *retval = [NSMutableArray arrayWithCapacity:[(NSArray*)list count]];
    [(NSArray*)list enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL* stop){
      [retval insertObject:[[type alloc] initWithDict:obj] atIndex:idx];
    }];
    return retval;
  } else if ([list isKindOfClass:[NSDictionary class]]) {
    return [NSArray arrayWithObject:[[type alloc] initWithDict:list]];
  } else {
    // error? shouldn't get here
    return nil;
  }
}

@end

// 
// @file MBError.m
// @author Joachim LeBlanc
// @date June 19 2012
// @copyright 
//   2012 Joachim LeBlanc <demosdemon@gmail.com> \n
//   This program is made available under the terms of the MIT License.
// 
// @brief Base class for all errors

#if ! __has_feature(objc_arc)
# warning This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif

#import "MB.h"

@implementation MBError

+ (NSError *) errorWithString:(NSString *)string
{
#if DICT_LIT
  NSDictionary * userInfo = @{ NSLocalizedDescriptionKey : string };
#else
  NSDictionary * userInfo = [NSDictionary dictionaryWithObjectsAndKeys:error, NSLocalizedDescriptionKey, nil];
#endif /* dict_lit */
  return [[NSError alloc] initWithDomain:@"org.musicbrainz.webservice" code:1 userInfo:userInfo];
}

- (NSError *) initWithElement:(NSXMLElement *)element
{
  NSArray * texts = [element elementsForName:@"text"];
  NSMutableArray * textsStrings = [NSMutableArray arrayWithCapacity:[texts count]];
  for (NSXMLElement * elem in texts)
    [textsStrings addObject:[[elem stringValue] copy]];
  
  NSString * error = [textsStrings componentsJoinedByString:@" "];
#if DICT_LIT
  NSDictionary * userInfo = @{ NSLocalizedDescriptionKey : error };
#else
  NSDictionary * userInfo = [NSDictionary dictionaryWithObjectsAndKeys:error, NSLocalizedDescriptionKey, nil];
#endif /* dict_lit */
  
  return [self initWithDomain:@"org.musicbrainz.webservice" code:1 userInfo:userInfo];
}


@end

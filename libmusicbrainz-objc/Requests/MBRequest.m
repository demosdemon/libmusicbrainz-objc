//
// @file MBQuery.m
// @date Jul 02 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made avaliable under the terms of the MIT License.
//
// @brief Webservice request object

#if ! __has_feature(objc_arc)
# warning This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif

#import "MB.h"

@implementation MBRequest

- (void) submitRequestWithQuery:(MBQuery *)query
{
  NOT_IMPLEMENTED();
}

- (NSString *) url
{
  NOT_IMPLEMENTED();
}

@synthesize RequestType = _RequestType;
@synthesize CompleteLists = _CompleteLists;
@synthesize EntityType = _EntityType;

- (id) init
{
  if (self = [super init]) {
    _Parameters = [NSMutableDictionary dictionary];
  }
  return self;
}

- (void) setParameter:(NSString *)value forKey:(NSString *)key
{ [_Parameters setObject:value forKey:key]; }
- (void) removeParameterForKey:(NSString *)key
{ [_Parameters removeObjectForKey:key]; }
- (NSString *) getParameterForKey:(NSString *)key
{ [_Parameters objectForKey:key]; }

@end

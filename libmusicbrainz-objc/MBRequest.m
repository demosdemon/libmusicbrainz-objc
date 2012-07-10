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

#import "MBRequest.h"

@implementation MBRequest

- (NSString *) RequestType
{
  return [_requestMethod copy];
}

- (void) setRequestType:(NSString *)RequestType
{
  RequestType = [RequestType uppercaseString];
  if ([RequestType isEqualToString:@"GET"] ||
      [RequestType isEqualToString:@"POST"] ||
      [RequestType isEqualToString:@"PUT"] ||
      [RequestType isEqualToString:@"DELETE"]) 
    _requestMethod = [RequestType copy];
}

@end

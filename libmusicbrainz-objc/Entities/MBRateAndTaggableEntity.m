// 
// @file MBRateAndTaggableEntity.m
// @author Jamie McDonald
// @date Mar 10 2012
// @copyright 
//   2012 Jamie McDonald \n
//   This program is made available under the terms of the MIT License.

#if ! __has_feature(objc_arc)
# warning This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif

#import "MB.h"

@implementation MBRateAndTaggableEntity

@synthesize TagList     = _tagList;
@synthesize UserTagList = _userTagList;
@synthesize Rating      = _rating;
@synthesize UserRating  = _userRating;

- (void) setUserRating:(NSUInteger)rating usingRequest:(MBRequest *)request
{
  NOT_IMPLEMENTED();
}

- (void) addUserTag:(NSString *)tag usingRequest:(MBRequest *)request
{
  NOT_IMPLEMENTED();
}


@end

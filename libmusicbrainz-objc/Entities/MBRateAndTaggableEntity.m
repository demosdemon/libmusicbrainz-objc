// 
// @file MBRateAndTaggableEntity.m
// @author Jamie McDonald
// @date Mar 10 2012
// @copyright 
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made available under the terms of the MIT License.

#if ! __has_feature(objc_arc)
# warning This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif

#import "MB.h"

@implementation MBRateAndTaggableEntity

MB_ATTRIBUTE(Id);
MB_ELEMENT(TagList);
MB_ELEMENT(UserTagList);
MB_ELEMENT(Rating);
MB_ELEMENT(UserRating);

- (void) setUserRating:(NSUInteger)rating usingRequest:(MBRatingSubmissionRequest *)request
{ [request setUserRating:rating forEntity:self]; }

- (void) addUserTag:(NSString *)tag usingRequest:(MBTagSubmissionRequest *)request
{ [request addUserTag:tag toEntity:self]; }


@end

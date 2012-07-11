//
// @file MBUserRating.h
// @date Jun 06 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made avaliable under the terms of the MIT License.
//
// @brief UserRating Entity

#import "MBEntity.h"

/// Represents a `<user-rating/>` element
@interface MBUserRating : MBEntity

/// Value of the rating. 1-5
@property (nonatomic, readonly) NSNumber * Value;

@end


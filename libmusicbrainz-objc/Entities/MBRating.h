//
// @file MBRating.h
// @date Jun 06 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made avaliable under the terms of the MIT License.
//
// @brief Rating Entity

#import "MBEntity.h"

/// Represents a `<rating/>` element
@interface MBRating : MBEntity

@property (nonatomic, readonly) NSNumber * VotesCount;
@property (nonatomic, readonly) NSNumber * Value;

@end


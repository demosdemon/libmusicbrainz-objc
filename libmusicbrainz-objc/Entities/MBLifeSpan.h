//
// @file MBLifeSpan.h
// @date Jun 06 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made avaliable under the terms of the MIT License.
//
// @brief LifeSpan Entity

#import "MBEntity.h"

/// Represents a `<life-span/>` element
@interface MBLifeSpan : MBEntity

/// String that matches the regular expression `[0-9]{4}(-[0-9]{2}){0,2}`
/// May be empty.
@property (nonatomic, readonly) NSString * Begin;
/// String that matches the regular expression `[0-9]{4}(-[0-9]{2}){0,2}`.
/// May be empty.
@property (nonatomic, readonly) NSString * End;
/// Boolean value to represent unknown end dates.
@property (nonatomic, readonly) NSNumber * Ended;

@end


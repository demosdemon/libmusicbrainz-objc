//
// @file MBTag.h
// @date Jun 06 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made avaliable under the terms of the MIT License.
//
// @brief Tag Entity

#import "MBEntity.h"

/// Represents a `<tag/>` element
@interface MBTag : MBEntity

@property (nonatomic, readonly) NSNumber * Count;
@property (nonatomic, readonly) NSString * Name;

@end


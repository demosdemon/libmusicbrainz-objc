//
// @file MBUserTag.h
// @date Jun 06 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made avaliable under the terms of the MIT License.
//
// @brief UserTag Entity

#import "MBEntity.h"

/// Represents a `<user-tag/>` element
@interface MBUserTag : MBEntity

/// Name of the tag
@property (nonatomic, readonly) NSString * Name;

@end


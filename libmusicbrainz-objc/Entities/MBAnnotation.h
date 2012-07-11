//
// @file MBAnnotation.h
// @date Jun 06 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made avaliable under the terms of the MIT License.
//
// @brief Annotation Entity

#import "MBEntity.h"

/// Represents an `<annotation/>` element
@interface MBAnnotation : MBEntity

@property (nonatomic, readonly) NSString * Type;
@property (nonatomic, readonly) NSString * Entity;
@property (nonatomic, readonly) NSString * Name;

@end


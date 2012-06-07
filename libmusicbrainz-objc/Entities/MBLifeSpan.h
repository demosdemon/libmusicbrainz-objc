///
/// @file MBLifeSpan.h
/// @date Jun 06 2012
/// @copyright
///   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
///   This program is made avaliable under the terms of the MIT License.
///
/// @brief LifeSpan Entity

#import "MBEntity.h"

@interface MBLifeSpan : MBEntity

@property (copy, nonatomic, readonly) NSString *Begin;
@property (copy, nonatomic, readonly) NSString *End;
@property (nonatomic, readonly) BOOL Ended;

@end


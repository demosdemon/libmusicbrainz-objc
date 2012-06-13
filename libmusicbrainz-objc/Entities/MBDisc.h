/// 
/// @file MBDisc.h
/// @author Brandon LeBlanc
/// @date Jun 06 2012
/// @copyright 
///   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
///   This program is made available under the terms of the MIT License.
///
/// @brief Work Entity

#import "MBEntity.h"

@interface MBDisc <MBEntity>

@property (copy, nonatomic, readonly) NSString *Id;
@property (nonatomic, readonly) NSNumber *Sectors;
@property (nonatomic, readonly) NSArray *ReleaseList; ///< NSArray of MBRelease objects

@end
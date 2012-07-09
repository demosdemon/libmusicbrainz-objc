//
// @file MBDisc.h
// @author Brandon LeBlanc
// @date Jun 06 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made available under the terms of the MIT License.
//
// @brief Work Entity

#import "MBEntity.h"

@class MBList;

/// Represents a `<disc/>` element
@interface MBDisc : MBEntity

/// Unique ID for this entity
@property (nonatomic, readonly) NSString *Id;
/// Number of sectors on the disc
@property (nonatomic, readonly) NSNumber *Sectors;
/// MBList with MBRelease objects
@property (nonatomic, readonly) MBList *ReleaseList;

@end
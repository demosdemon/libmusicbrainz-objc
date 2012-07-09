//
// @file MBFreeDbDisc.h
// @date Jun 06 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made avaliable under the terms of the MIT License.
//
// @brief FreeDbDisc Entity

#import "MBEntity.h"

/// Represents a `<freedb-disc/>` element
@interface MBFreedbDisc : MBEntity

@property (nonatomic, readonly) NSString * Id;
@property (nonatomic, readonly) NSString * Title;
@property (nonatomic, readonly) NSString * Artist;
@property (nonatomic, readonly) NSString * Category;
@property (nonatomic, readonly) NSString * Year;
@property (nonatomic, readonly) MBList * NonmbTrackList;

@end


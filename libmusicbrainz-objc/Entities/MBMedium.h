//
// @file MBMedium.h
// @date Jun 06 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made avaliable under the terms of the MIT License.
//
// @brief Medium Entity

#import "MBEntity.h"

@class MBList;

/// Represents a `<medium/>` element
@interface MBMedium : MBEntity

@property (nonatomic, readonly) NSString * Title;
@property (nonatomic, readonly) NSNumber * Position;
@property (nonatomic, readonly) NSString * Format;
@property (nonatomic, readonly) MBList * DiscList;
@property (nonatomic, readonly) MBList * TrackList;

@end


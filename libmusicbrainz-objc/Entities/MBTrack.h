//
// @file MBTrack.h
// @date Jun 06 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made avaliable under the terms of the MIT License.
//
// @brief Track Entity

#import "MBEntity.h"

/// Represents a `<track/>` element
@interface MBTrack : MBEntity

@property (nonatomic, readonly) NSNumber * Position;
@property (nonatomic, readonly) NSString * Number;
@property (nonatomic, readonly) NSString * Title;
@property (nonatomic, readonly) NSNumber * Length;
@property (nonatomic, readonly) MBArtistCredit * ArtistCredit;
@property (nonatomic, readonly) MBRecording * Recording;

@end


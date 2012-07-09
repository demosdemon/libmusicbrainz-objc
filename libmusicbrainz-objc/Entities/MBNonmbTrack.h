//
// @file MBNonMbTrack.h
// @date Jun 06 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made avaliable under the terms of the MIT License.
//
// @brief NonMbTrack Entity

#import "MBEntity.h"

/// Represents a `<nonmb-track/>` element
@interface MBNonmbTrack : MBEntity

@property (nonatomic, readonly) NSString * Title;
@property (nonatomic, readonly) NSString * Artist;
@property (nonatomic, readonly) NSNumber * Length;

@end


/// 
/// @file MBRecording.h
/// @author Brandon LeBlanc
/// @date Jun 06 2012
/// @copyright 
///   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
///   This program is made available under the terms of the MIT License.
///
/// @brief Recording Entity

#import "RateAndTaggableEntity.h"

@interface MBRecording : MBRateAndTaggableEntity

@property (copy, nonatomic, readonly) NSString *Id;
@property (copy, nonatomic, readonly) NSString *Title;
@property (nonatomic, readonly) NSNumber *Length;
@property (copy, nonatomic, readonly) NSString *Disambiguation;
@property (nonatomic, readonly) MBArtistCredit *ArtistCredit;
@property (nonatomic, readonly) NSArray *ReleaseList; ///< NSArray of MBRelease objects
@property (nonatomic, readonly) NSArray *PUIDList; ///< NSArray of MBPUID objects
@property (nonatomic, readonly) NSArray *ISRCList; ///< NSArray of MBISRC objects
@property (nonatomic, readonly) NSArray *RelationListList; ///< NSArray of NSArray objects that contain MBRelation objects
@property (nonatomic, readonly) NSArray *TagList; ///< NSArray of MBTag objects
@property (nonatomic, readonly) NSArray *UserTagList; ///< NSArray of MBUserTag objects
@property (nonatomic, readonly) MBRating *Rating;
@property (nonatomic, readonly) MBUserRating *UserRating;

@end

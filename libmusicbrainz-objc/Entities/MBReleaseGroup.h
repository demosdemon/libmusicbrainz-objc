/// 
/// @file MBReleaseGroup.h
/// @author Jens Lukas
/// @date Jul 25 2010
/// @copyright 
///   2010 Jens Lukas <contact@jenslukas.com> \n
///   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
///   This program is made available under the terms of the MIT License.
///
/// @brief ReleaseGroup entity

#import "MBRateAndTaggableEntity.h"
#import "MBArtistCredit.h"

@interface MBReleaseGroup : MBRateAndTaggableEntity

@property (copy, nonatomic, readonly) NSString *Id;
@property (copy, nonatomic, readonly) NSString *Type;
@property (copy, nonatomic, readonly) NSString *Title;
@property (copy, nonatomic, readonly) NSString *Disambiguation;
@property (copy, nonatomic, readonly) NSString *FirstReleaseDate;
@property (nonatomic, readonly) NSArray *SecondaryTypeList; ///< NSArray of NSString objects
@property (nonatomic, readonly) MBArtistCredit *ArtistCredit;
@property (nonatomic, readonly) NSArray *ReleaseList; ///< NSArray of MBRelease objects
@property (nonatomic, readonly) NSArray *RelationListList; ///< NSArray of NSArray objects that contain MBRelation objects

@end

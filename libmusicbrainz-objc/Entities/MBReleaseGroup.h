//
// @file MBReleaseGroup.h
// @author Jens Lukas
// @date Jul 25 2010
// @copyright
//   2010 Jens Lukas <contact@jenslukas.com> \n
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made available under the terms of the MIT License.
//
// @brief ReleaseGroup entity

#import "MBRateAndTaggableEntity.h"
#import "MBArtistCredit.h"
#import "MBList.h"

/// Represents a `<release-group/>` element
@interface MBReleaseGroup : MBRateAndTaggableEntity

/// Unique MusicBrainz ID for this entity
@property (copy, nonatomic, readonly) NSString *Id;
/// Type of release group
@property (copy, nonatomic, readonly) NSString *Type;
/// Title of the release group
@property (copy, nonatomic, readonly) NSString *Title;
/// Disambiguation comment for the release group
@property (copy, nonatomic, readonly) NSString *Disambiguation;
/// Earliest date from MBRelease in ReleaseList
@property (copy, nonatomic, readonly) NSString *FirstReleaseDate;
/// NSArray with NSString objects
@property (nonatomic, readonly) NSArray *SecondaryTypeList;
/// Artist credit for this release
@property (nonatomic, readonly) MBArtistCredit *ArtistCredit;
/// MBList with MBRelease objects
@property (nonatomic, readonly) MBList *ReleaseList;
/// MBList with MBRelation objects
@property (nonatomic, readonly) MBList *RelationListList;

@end

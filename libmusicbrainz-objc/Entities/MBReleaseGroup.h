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

@class MBArtistCredit, MBList;

/// Represents a `<release-group/>` element
@interface MBReleaseGroup : MBRateAndTaggableEntity

/// Unique MusicBrainz ID for this entity
@property (nonatomic, readonly) NSString *Id;
/// Type of release group
@property (nonatomic, readonly) NSString *Type;
/// Title of the release group
@property (nonatomic, readonly) NSString *Title;
/// Disambiguation comment for the release group
@property (nonatomic, readonly) NSString *Disambiguation;
/// Earliest date from MBRelease in ReleaseList
@property (nonatomic, readonly) NSString *FirstReleaseDate;
/// Primary Release Type
@property (nonatomic, readonly) NSString *PrimaryType;
/// MBList with NSString objects
@property (nonatomic, readonly) MBList *SecondaryTypeList;
/// Artist credit for this release
@property (nonatomic, readonly) MBArtistCredit *ArtistCredit;
/// MBList with MBRelease objects
@property (nonatomic, readonly) MBList *ReleaseList;
/// MBList with MBRelation objects
@property (nonatomic, readonly) MBList *RelationList;

@end

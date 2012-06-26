//
// @file MBWork.h
// @author Brandon LeBlanc
// @date Jun 06 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made available under the terms of the MIT License.
//
// @brief Work Entity

#import "MBRateAndTaggableEntity.h"
#import "MBArtistCredit.h"
#import "MBList.h"

/// Represents a `<work/>` element
@interface MBWork : MBRateAndTaggableEntity

/// Unique MusicBrainz ID for this entity
@property (copy, nonatomic, readonly) NSString *Id;
/// Type of work
@property (copy, nonatomic, readonly) NSString *Type;
/// Title of the work
@property (copy, nonatomic, readonly) NSString *Title;
/// ISO-639 Laguage
///
/// Matches the regular expression `[a-z]{3}` or empty
@property (copy, nonatomic, readonly) NSString *Language;
/// Artist Credit for the work
@property (nonatomic, readonly) MBArtistCredit *ArtistCredit;
/// MBList with MBISWC objects
@property (nonatomic, readonly) MBList *ISWCList;
/// Disambiguation comment for this work
@property (copy, nonatomic, readonly) NSString *Disambiguation;
/// MBList with MBAlias objects
@property (nonatomic, readonly) MBList *AliasList;
/// MBList with MBRelation objects
@property (nonatomic, readonly) MBList *RelationListList; ///< NSArray of NSArray objects that contain MBRelation objects

@end

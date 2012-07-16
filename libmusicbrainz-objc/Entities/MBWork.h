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

@class MBArtistCredit, MBList;

/// Represents a `<work/>` element
@interface MBWork : MBRateAndTaggableEntity

/// Type of work
@property (nonatomic, readonly) NSString *Type;
/// Title of the work
@property (nonatomic, readonly) NSString *Title;
/// ISO-639 Laguage
///
/// Matches the regular expression `[a-z]{3}` or empty
@property (nonatomic, readonly) NSString *Language;
/// Artist Credit for the work
@property (nonatomic, readonly) MBArtistCredit *ArtistCredit;
/// ISWC
@property (nonatomic, readonly) MBIsrc *Iswc;
/// MBList with MBISWC objects
@property (nonatomic, readonly) MBList *IswcList;
/// Disambiguation comment for this work
@property (nonatomic, readonly) NSString *Disambiguation;
/// MBList with MBAlias objects
@property (nonatomic, readonly) MBList *AliasList;
/// MBList with MBRelation objects
@property (nonatomic, readonly) MBList *RelationList;

@end

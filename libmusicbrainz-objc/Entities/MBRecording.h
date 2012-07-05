//
// @file MBRecording.h
// @author Brandon LeBlanc
// @date Jun 06 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made available under the terms of the MIT License.
//
// @brief Recording Entity

#import "MBRateAndTaggableEntity.h"

@class MBArtistCredit, MBList;

/// Represents a `<recording/>` element
@interface MBRecording : MBRateAndTaggableEntity

/// Unique MusicBrainz ID for this entity
@property (copy, nonatomic, readonly) NSString *Id;
/// Title of this recording
@property (copy, nonatomic, readonly) NSString *Title;
/// Length in seconds of this recoding
@property (nonatomic, readonly) NSNumber *Length;
/// Disambiguation comment for this recording.
@property (copy, nonatomic, readonly) NSString *Disambiguation;
/// Artist Credit for this recording.
@property (nonatomic, readonly) MBArtistCredit *ArtistCredit;
/// MBList with MBRelease objects
@property (nonatomic, readonly) MBList *ReleaseList;
/// MBList with MBPUID objects
@property (nonatomic, readonly) MBList *PUIDList;
/// MBList with MBISRC objects
@property (nonatomic, readonly) MBList *ISRCList;
/// MBList with MBRelation objects
@property (nonatomic, readonly) MBList *RelationListList;

@end

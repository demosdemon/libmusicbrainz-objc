//
// @file MBArtist.h
// @author Jens Lukas
// @date Jun 22 2010
// @author Joachim LeBlanc
// @copyright
//   2010 Jens Lukas <contact@jenslukas.com> \n
//   2012 Joachim LeBlanc <demosdemon@gmail.com> \n
//   This program is made available under the terms of the MIT License.
//
// @brief Artist entity

#import "MBRateAndTaggableEntity.h"
#import "MBLifeSpan.h"
#import "MBList.h"

/// Represents an `<artist/>` element
@interface MBArtist : MBRateAndTaggableEntity

// All NSStrings* must be copy, nonatomic
/// Unique MusicBrainz ID for this entity
@property (copy, nonatomic, readonly) NSString *Id;
/// Type of artist.
///
/// Either "person" or "group"
@property (copy, nonatomic, readonly) NSString *Type;
/// Name of the artist
@property (copy, nonatomic, readonly) NSString *Name;
/// Sort name for the artist
@property (copy, nonatomic, readonly) NSString *SortName;
/// Gender of the artist if Type is "person".
@property (copy, nonatomic, readonly) NSString *Gender;
/// ISO-3166 Country for the artist
///
/// Matches regular expression `[A-Z]{2}` or empty
@property (copy, nonatomic, readonly) NSString *Country;
/// Disambiguation comment for the artist.
@property (copy, nonatomic, readonly) NSString *Disambiguation;
/// MBList with MBIPI objects.
@property (nonatomic, readonly) MBList *IPIList;
/// Lifespan of this artist
@property (nonatomic, readonly) MBLifeSpan *Lifespan;
/// MBList with MBAlias objects
@property (nonatomic, readonly) MBList *AliasList;
/// MBList with MBRecording objects
@property (nonatomic, readonly) MBList *RecordingList;
/// MBList with MBRelease objects
@property (nonatomic, readonly) MBList *ReleaseList;
/// MBList with MBReleaseGroup objects
@property (nonatomic, readonly) MBList *ReleaseGroupList;
/// MBList with MBLabel objects
@property (nonatomic, readonly) MBList *LabelList;
/// MBList with MBWork objects
@property (nonatomic, readonly) MBList *WorkList;
/// MBList with MBRelation objects
@property (nonatomic, readonly) MBList *RelationListList;

@end

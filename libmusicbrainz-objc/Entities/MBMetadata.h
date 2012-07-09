//
// @file MBMetadata.h
// @date Jun 06 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made avaliable under the terms of the MIT License.
//
// @brief Metadata Entity

#import "MBEntity.h"

@class MBArtist, MBRelease, MBReleaseGroup, MBRecording, MBLabel, MBWork, MBPuid;
@class MBIsrc, MBDisc, MBRating, MBUserRating, MBCollection, MBList;

/// Represents a `<metadata/>` element
@interface MBMetadata : MBEntity

@property (nonatomic, readonly) NSString * Generator;
@property (nonatomic, readonly) NSDate * Created;
@property (nonatomic, readonly) MBArtist * Artist;
@property (nonatomic, readonly) MBRelease * Release;
@property (nonatomic, readonly) MBRecording * Recording;
@property (nonatomic, readonly) MBLabel * Label;
@property (nonatomic, readonly) MBWork * Work;
@property (nonatomic, readonly) MBPuid * Puid;
@property (nonatomic, readonly) MBIsrc * Isrc;
@property (nonatomic, readonly) MBDisc * Disc;
@property (nonatomic, readonly) MBRating * Rating;
@property (nonatomic, readonly) MBUserRating * UserRating;
@property (nonatomic, readonly) MBCollection * Collection;
@property (nonatomic, readonly) MBList * ArtistList;
@property (nonatomic, readonly) MBList * ReleaseList;
@property (nonatomic, readonly) MBList * ReleaseGroupList;
@property (nonatomic, readonly) MBList * RecordingList;
@property (nonatomic, readonly) MBList * LabelList;
@property (nonatomic, readonly) MBList * WorkList;
@property (nonatomic, readonly) MBList * IsrcList;
@property (nonatomic, readonly) MBList * UserTagList;
@property (nonatomic, readonly) MBList * CollectionList;

@end


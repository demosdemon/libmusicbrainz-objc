//
// @file MBRateAndTaggableEntity.h
// @author Jamie McDonald
// @date Mar 10 2012
// @copyright
//   2012 Jamie McDonald \n
//   This program is made available under the terms of the MIT License.

#import "MBEntity.h"

@class MBTag, MBUserTag, MBRating, MBUserRating, MBList, MBTagSubmissionRequest;
@class MBRatingSubmissionRequest;

/// Represents entities in the MusicBrainz database that can be rated and tagged
/// by users
@interface MBRateAndTaggableEntity : MBEntity <MBUniqueIdentifier>

// All NSStrings* must be copy, nonatomic
/// Unique MusicBrainz ID for this entity
@property (nonatomic, readonly) NSString * Id;
@property (nonatomic, readonly) MBList * TagList;
@property (nonatomic, readonly) MBList * UserTagList;
@property (nonatomic, readonly) MBRating * Rating;
@property (nonatomic, readonly) MBUserRating * UserRating;

- (void) setUserRating:(NSUInteger)rating usingRequest:(MBRatingSubmissionRequest *)request;
- (void) addUserTag:(NSString *)tag usingRequest:(MBTagSubmissionRequest *)request;

@end

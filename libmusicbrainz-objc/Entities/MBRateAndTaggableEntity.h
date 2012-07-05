//
// @file MBRateAndTaggableEntity.h
// @author Jamie McDonald
// @date Mar 10 2012
// @copyright
//   2012 Jamie McDonald \n
//   This program is made available under the terms of the MIT License.

#import "MBEntity.h"

@class MBTag, MBUserTag, MBRating, MBUserRating, MBList, MBRequest;

/// Represents entities in the MusicBrainz database that can be rated and tagged
/// by users
@interface MBRateAndTaggableEntity : MBEntity {
 @private
  MBList * _tagList;
  MBList * _userTagList;
  MBRating * _rating;
  MBUserRating * _userRating;
}

@property (retain, nonatomic, readonly) MBList * TagList;
@property (retain, nonatomic, readonly) MBList * UserTagList;
@property (retain, nonatomic, readonly) MBRating * Rating;
@property (retain, nonatomic, readonly) MBUserRating * UserRating;

- (void) setUserRating:(NSUInteger)rating usingRequest:(MBRequest *)request;
- (void) addUserTag:(NSString *)tag usingRequest:(MBRequest *)request;

@end

/// 
/// @file RateAndTaggableEntity.h
/// @author Jamie McDonald
/// @date Mar 10 2012
/// @copyright 
///   2012 Jamie McDonald \n
///   This program is made available under the terms of the MIT License.

#import <Foundation/Foundation.h>

@class MBUserTag;
@class MBRating;
@class MBUserRating;

@protocol MBRateAndTaggableEntity <NSObject>

@property (nonatomic, readonly) NSArray *TagList; ///< NSArray of MBTag objects
@property (nonatomic, readonly) NSArray *UserTagList; ///< NSArray of MBUserTag objects.
                                                      ///< To add to this list, 
                                                      ///< use MBRateAndTaggableEntity::addUserTag:
@property (nonatomic, readonly) MBRating *Rating;
@property (retain, atomic) MBUserRating *UserRating;

@required

/// Add User Tag to MusicBrainz database. User must already be authenticated
/// with MBAccountInformation or else this will fail.
/// @param userTag [in] MBUserTag new tag to add to MBArtist
- (void) addUserTag:(MBUserTag *)userTag;

- (MBUserRating *) getUserRating;
- (void) setUserRating:(MBUserRating *)UserRating;


@end

/// 
/// @file RateAndTaggableEntity.h
/// @author Jamie McDonald
/// @date Mar 10 2012
/// @copyright 
///   2012 Jamie McDonald \n
///   This program is made available under the terms of the MIT License.

#import "MBEntity.h"

@class MBRating, MBUserRating;

@interface MBRateAndTaggableEntity : MBEntity

@property (nonatomic, readonly) NSArray *TagList; ///< NSArray of MBTag objects
@property (nonatomic, readonly) NSArray *UserTagList; ///<NSArray of MBUserTag objects
@property (nonatomic, readonly) MBRating *Rating;
@property (nonatomic, readonly) MBUserRating *UserRating;

@end

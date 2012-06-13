/// 
/// @file RateAndTaggableEntity.h
/// @author Jamie McDonald
/// @date Mar 10 2012
/// @copyright 
///   2012 Jamie McDonald \n
///   This program is made available under the terms of the MIT License.

#import "MBEntity.h"

@class MBRating, MBUserRating;

@protocol MBRateAndTaggableEntity <MBEntity>

@required

/// All Rate and Taggable entities must have a mbid
@property (copy, nonatomic, readonly) NSString * Id;

/// NSAray of MBTag objects
@property (nonatomic, readonly) NSArray * TagList;
/// NSArray of MBUserTag objects
@property (nonatomic, readonly) NSArray * UserTagList;
@property (nonatomic, readonly) MBRating * Rating;
@property (nonatomic, readonly) MBUserRating * UserRating;

/// Element name for this type of RateAndTaggable, e.g.: artist, release
@property (copy, nonatomic, readonly) NSString* ElementName; 

@end

/// 
/// @file Artist.h
/// @author Jens Lukas
/// @date Jun 22 2010
/// @copyright 
///   2010 Jens Lukas <contact@jenslukas.com> \n
///   This program is made available under the terms of the MIT License.
///
/// @brief Artist entity

#import <Foundation/Foundation.h>
#import "RateAndTaggableEntity.h"

@interface Artist : NSObject <RateAndTaggableEntity> {
	NSString *mbid;
	NSString *name;	
	NSInteger score;
	NSNumber *rating;
	NSInteger votes;
	NSMutableArray *releaseGroups;
}

@property (nonatomic, retain) NSString *mbid;
@property (nonatomic, retain) NSString *name;
@property (nonatomic) NSInteger score;
@property (nonatomic, retain) NSNumber *rating;
@property (nonatomic, retain) NSMutableArray *releaseGroups;
@property (nonatomic) NSInteger votes;
@end

/// 
/// @file Label.h
/// @author Jens Lukas
/// @date Jun 22 2010
/// @copyright 
///   2010 Jens Lukas <contact@jenslukas.com> \n
///   This program is made available under the terms of the MIT License.
///
/// @brief Label entity

#import <Foundation/Foundation.h>
#import "RateAndTaggableEntity.h"

@interface Label : NSObject <RateAndTaggableEntity> {
	NSString *mbid;
	NSString *type;
	NSString *name;
	NSInteger score;
	NSMutableArray *releases;
	NSNumber *rating;
	NSInteger votes;	
}

@property (nonatomic, retain) NSString *mbid;
@property (nonatomic, retain) NSString *type;
@property (nonatomic, retain) NSString *name;
@property (nonatomic) NSInteger score;
@property (nonatomic, retain) NSMutableArray *releases;
@property (nonatomic, retain) NSNumber *rating;
@property (nonatomic) NSInteger votes;
@end

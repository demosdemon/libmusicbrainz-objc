/// 
/// @file Track.h
/// @author Peter Katheter
/// @date Jun 28 2010
/// @copyright 
///   2010 Jens Lukas <contact@jenslukas.com> \n
///   This program is made available under the terms of the MIT License.
///
/// @brief Track entity

#import <Foundation/Foundation.h>
#import "RateAndTaggableEntity.h"

@interface Track : NSObject <MBRateAndTaggableEntity> {
	NSString *mbid;
	NSInteger position;
	NSString *title;
	NSInteger length;
	NSInteger votes;
	NSNumber *rating;
}

@property (nonatomic, retain) NSString *mbid;
@property (nonatomic) NSInteger position;
@property (nonatomic, retain) NSString *title;
@property (nonatomic) NSInteger length;
@property (nonatomic) NSInteger votes;
@property (nonatomic, retain) NSNumber *rating;
@end

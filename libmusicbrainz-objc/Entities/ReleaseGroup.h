/// 
/// @file ReleaseGroup.h
/// @author Jens Lukas
/// @date Jul 25 2010
/// @copyright 
///   2010 Jens Lukas <contact@jenslukas.com> \n
///   This program is made available under the terms of the MIT License.
///
/// @brief ReleaseGroup entity

#import <Foundation/Foundation.h>
#import	"RateAndTaggableEntity.h"

@interface ReleaseGroup : NSObject <MBRateAndTaggableEntity> {
	NSString *title;
	NSString *mbid;
	NSString *type;
	NSInteger votes;
	NSNumber *rating;
	NSMutableArray *releases;
}
@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *mbid;
@property (nonatomic, retain) NSString *type;
@property (nonatomic) NSInteger votes;
@property (nonatomic, retain) NSNumber *rating;
@property (nonatomic, retain) NSMutableArray *releases;
@end

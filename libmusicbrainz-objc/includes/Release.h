/// 
/// @file Release.h
/// @author Jens Lukas
/// @date Jun 7 2010
/// @copyright 
///   2010 Jens Lukas <contact@jenslukas.com> \n
///   This program is made available under the terms of the MIT License.
///
/// @brief Release entity

#import <Foundation/Foundation.h>
#import "Label.h"

@interface Release : NSObject {
	@private
	NSString *mbid;
	NSString *title;
	NSInteger score;
	NSString *artist;
	NSString *date;
	NSMutableArray *tracks;
	Label *label;
}

@property (nonatomic, retain) NSString *mbid;
@property (nonatomic, retain) NSString *title;
@property (nonatomic) NSInteger score;
@property (nonatomic, retain) NSString *artist;
@property (nonatomic, retain) NSString *date;
@property (nonatomic, retain) NSMutableArray *tracks;
@property (nonatomic, retain) Label *label;
@end

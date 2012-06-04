/// 
/// @file Track.m
/// @author Peter Katheter
/// @date Jun 28 2010
/// @copyright 
///   2010 Jens Lukas <contact@jenslukas.com> \n
///   This program is made available under the terms of the MIT License.
///
/// @brief Track entity

#import "Track.h"


@implementation Track
@synthesize mbid, position, title, length, tags, votes, rating;

-(NSString *) getMBID {
	return mbid;
}

@end

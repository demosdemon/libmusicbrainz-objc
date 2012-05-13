/// 
/// @file ReleaseGroup.m
/// @author Jens Lukas
/// @date Jul 25 2010
/// @copyright 
///   2010 Jens Lukas <contact@jenslukas.com> \n
///   This program is made available under the terms of the MIT License.
///
/// @brief ReleaseGroup entity

#import "ReleaseGroup.h"

@implementation ReleaseGroup
@synthesize title, mbid, type, votes, rating, tags, releases;

-(NSString *) getMBID {
	return mbid;
}

-(void) dealloc {
	[mbid release];	
	[title release];
	[type release];
	[rating release];
	[tags release];
	[releases release];
	[super dealloc];
}

@end

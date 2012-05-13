/// 
/// @file Release.m
/// @author Jens Lukas
/// @date Jun 7 2010
/// @copyright 
///   2010 Jens Lukas <contact@jenslukas.com> \n
///   This program is made available under the terms of the MIT License.
///
/// @brief Release entity

#import "Release.h"

@implementation Release
@synthesize mbid, title, score, artist, date, tracks, label;

-(void) dealloc {
	[mbid release];
	[title release];
	[artist release];
	[date release];
	tracks = nil;
	[tracks release];
	[label release];
	[super dealloc];
}
@end

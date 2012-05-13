/// 
/// @file Artist.m
/// @author Jens Lukas
/// @date Jun 22 2010
/// @copyright 
///   2010 Jens Lukas <contact@jenslukas.com> \n
///   This program is made available under the terms of the MIT License.
///
/// @brief Artist entity

#import "Artist.h"


@implementation Artist
@synthesize mbid, name, score, rating, releaseGroups, tags, votes;

-(NSString *)getMBID {
	return mbid;
}
@end

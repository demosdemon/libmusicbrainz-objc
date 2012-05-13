/// 
/// @file Label.m
/// @author Jens Lukas
/// @date Jun 22 2010
/// @copyright 
///   2010 Jens Lukas <contact@jenslukas.com> \n
///   This program is made available under the terms of the MIT License.
///
/// @brief Label entity

#import "Label.h"


@implementation Label
@synthesize mbid, type, name, score, tags, releases, rating, votes;

-(NSString *) getMBID {
	return mbid;
}
@end

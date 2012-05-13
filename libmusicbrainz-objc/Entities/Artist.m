//
//  Artist.m
//  Musicbrainz
//
//  Created by Jens Lukas on 6/22/10.
//  Copyright 2010 Jens Lukas <contact@jenslukas.com>
//
//  This program is made available under the terms of the MIT License.
//
//	Abstract: Artist Entity

#import "Artist.h"


@implementation Artist
@synthesize mbid, name, score, rating, releaseGroups, tags, votes;

-(NSString *)getMBID {
	return mbid;
}
@end

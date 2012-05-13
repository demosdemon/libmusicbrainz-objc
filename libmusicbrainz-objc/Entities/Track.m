//
//  Track.m
//  Musicbrainz
//
//  Created by Peter Katheter on 6/28/10.
//  Copyright 2010 Jens Lukas <contact@jenslukas.com>
//
//  This program is made available under the terms of the MIT License.
//
//	Abstract: Track Entity

#import "Track.h"


@implementation Track
@synthesize mbid, position, title, length, tags, votes, rating;

-(NSString *) getMBID {
	return mbid;
}

@end

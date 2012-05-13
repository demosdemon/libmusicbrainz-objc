//
//  ReleaseGroup.m
//  Musicbrainz
//
//  Created by Jens Lukas on 7/25/10.
//  Copyright 2010 Jens Lukas <contact@jenslukas.com>
//
//  This program is made available under the terms of the MIT License.
//
//	Abstract: ReleaseGroup entity

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

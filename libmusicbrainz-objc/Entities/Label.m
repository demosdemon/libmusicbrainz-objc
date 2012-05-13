//
//  Label.m
//  Musicbrainz
//
//  Created by Jens Lukas on 6/22/10.
//  Copyright 2010 Jens Lukas <contact@jenslukas.com>
//
//  This program is made available under the terms of the MIT License.
//
//	Abstract: Label Entity

#import "Label.h"


@implementation Label
@synthesize mbid, type, name, score, tags, releases, rating, votes;

-(NSString *) getMBID {
	return mbid;
}
@end

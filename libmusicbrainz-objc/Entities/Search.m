//
//  Search.m
//  Musicbrainz
//
//  Created by Jens Lukas on 6/4/10.
//  Copyright 2010 Jens Lukas <contact@jenslukas.com>
//
//  This program is made available under the terms of the MIT License.
//
//	Abstract: Simple search object, indicating search text and type to search for (e.g. Artist, Release etc.)


#import "Search.h"
NSString * const SearchTypeToString[] = {
	@"Artist",
	@"Release",
	@"Label",
	@"Release group",
	@"Track"
};

@implementation Search
@synthesize searchText, detailSearch;

-(void)setType:(SearchTypes)type {
	searchType = type;
}

-(SearchTypes)getType {
	return searchType;
}

@end

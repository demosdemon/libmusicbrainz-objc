//
//  Search.h
//  Musicbrainz
//
//  Created by Jens Lukas on 6/4/10.
//  Copyright 2010 Jens Lukas <contact@jenslukas.com>
//
//  This program is made available under the terms of the MIT License.
//
//	Abstract: Simple search object, indicating search text and type to search for (e.g. Artist, Release etc.)

#import <Foundation/Foundation.h>

typedef enum SearchTypes
{
	ArtistType,
	ReleaseType,
	LabelType,
	ReleaseGroupType,
	TrackType
} SearchTypes;

extern NSString * const SearchTypeToString[];

@interface Search : NSObject {
	NSString *searchText;
	SearchTypes searchType;
	bool detailSearch;
}
@property(nonatomic, retain) NSString *searchText;
@property (nonatomic) bool detailSearch;

-(void) setType:(SearchTypes)type;
-(SearchTypes) getType;
@end

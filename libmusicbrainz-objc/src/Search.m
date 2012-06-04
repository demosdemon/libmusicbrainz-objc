/// 
/// @file Search.m
/// @author Jens Lukas
/// @date Jul 4 2010
/// @copyright 
///   2010 Jens Lukas <contact@jenslukas.com> \n
///   This program is made available under the terms of the MIT License.
///
/// @brief Simple search object, indicating search text and type to search for (e.g. Artist, Release etc.)

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

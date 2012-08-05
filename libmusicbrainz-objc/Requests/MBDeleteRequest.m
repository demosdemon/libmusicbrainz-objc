//
// MBDeleteRequest.m
// libmusicbrainz-objc
//
// Created by Joachim LeBlanc on 7/16/12.
// Copyright (c) 2012.
// This program is made available under the terms of the MIT License.
//

#import "MB.h"
#import "MBDeleteRequest.h"

@implementation MBDeleteRequest 

- (id) init
{
  if (self = [super init]) {
    _Releases = [NSMutableSet set];
  }
  return self;
}

- (void) setCollection:(MBCollection *)collection
{ _Resource = [collection.Id copy]; }

- (void) addRelease:(MBRelease *)release
{ [_Releases addObject:[release.Id copy]]; }
- (void) removeRelease:(MBRelease *)release
{ [_Releases removeObject:[release.Id copy]]; }

- (NSString *) url
{
  NSString * releases = [[_Releases allObjects] componentsJoinedByString:@";"];
  return [NSString stringWithFormat:@"collection/%@/releases/%@?%@", _Resource, releases, [self parameterString]];
}


@end

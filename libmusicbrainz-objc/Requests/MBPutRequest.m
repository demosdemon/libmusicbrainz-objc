//
// MBPutRequest.m
// libmusicbrainz-objc
//
// Created by Joachim LeBlanc on 7/16/12.
// Copyright (c) 2012.
// This program is made available under the terms of the MIT License.
//

#import "MBPutRequest.h"

@implementation MBPutRequest

- (id) init
{
  if (self = [super init]) {
    _RequestType = @"PUT";
    _Releases = [NSMutableSet set];
    _EntityType = @"collection";
  }
  return self;
}

- (void) setCollection:(MBCollection *)collection
{
  NOT_IMPLEMENTED();
}

- (void) addRelease:(MBRelease *)release
{ [_Releases addObject:release]; }
- (void) removeRelease:(MBRelease *)release
{ [_Releases removeObject:release]; }

@end

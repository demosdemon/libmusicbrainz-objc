//
// MBPostRequest.m
// libmusicbrainz-objc
//
// Created by Joachim LeBlanc on 7/16/12.
// Copyright (c) 2012.
// This program is made available under the terms of the MIT License.
//

#import "MB.h"
#import "MBPostRequest.h"

@implementation MBPostRequest

- (NSData *) postdata
{ return [NSData data]; }

- (NSString *) url
{
  return [NSString stringWithFormat:@"%@?%@", _endpoint, [self parameterString]];
}

@end

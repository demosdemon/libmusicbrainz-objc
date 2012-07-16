//
// MBPostRequest.h
// libmusicbrainz-objc
//
// Created by Joachim LeBlanc on 7/16/12.
// Copyright (c) 2012.
// This program is made available under the terms of the MIT License.
//

#import "MBRequest.h"

@interface MBPostRequest : MBRequest

- (NSData *) postdata;

@end

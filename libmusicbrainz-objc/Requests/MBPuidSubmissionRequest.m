//
// MBPuidSubmissionRequest.m
// libmusicbrainz-objc
//
// Created by Joachim LeBlanc on 7/16/12.
// Copyright (c) 2012.
// This program is made available under the terms of the MIT License.
//

#import "MBPuidSubmissionRequest.h"

@implementation MBPuidSubmissionRequest 

- (id) init
{
  if (self = [super init]) {
    _EntityType = @"recording";
    _Puids = [NSMutableDictionary dictionary];
  }
  return self;
}

- (void) addPuid:(NSString *)puid toRecording:(MBRecording *)recording
{
  NOT_IMPLEMENTED();
}

- (void) removePuid:(NSString *)puid fromRecording:(MBRecording *)recording
{
  NOT_IMPLEMENTED();
}

- (NSArray *) getPuidsForRecording:(MBRecording *)recording
{
  NOT_IMPLEMENTED();
}

@end

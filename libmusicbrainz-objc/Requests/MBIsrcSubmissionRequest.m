//
// MBIsrcSubmissionRequest.m
// libmusicbrainz-objc
//
// Created by Joachim LeBlanc on 7/16/12.
// Copyright (c) 2012.
// This program is made available under the terms of the MIT License.
//

#import "MB.h"
#import "MBIsrcSubmissionRequest.h"

@implementation MBIsrcSubmissionRequest

- (id) init
{
  if (self = [super init]) {
    _EntityType = @"recording";
    _Isrcs = [NSMutableDictionary dictionary];
  }
  return self;
}

- (void) addIsrc:(NSString *)isrc toRecording:(MBRecording *)recording
{
  NOT_IMPLEMENTED();
}

- (void) removeIsrc:(NSString *)isrc fromRecording:(MBRecording *)recording
{
  NOT_IMPLEMENTED();
}

- (NSArray *) getIsrcsForRecording:(MBRecording *)recording
{
  NOT_IMPLEMENTED();
}

@end

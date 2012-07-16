//
// MBIsrcSubmissionRequest.h
// libmusicbrainz-objc
//
// Created by Joachim LeBlanc on 7/16/12.
// Copyright (c) 2012.
// This program is made available under the terms of the MIT License.
//

#import "MBPostRequest.h"

@class MBRecording;

@interface MBIsrcSubmissionRequest : MBPostRequest {
 @private
  NSMutableDictionary * _Isrcs;
}

- (void) addIsrc:(NSString *)isrc toRecording:(MBRecording *)recording;
- (void) removeIsrc:(NSString *)isrc fromRecording:(MBRecording *)recording;
- (NSArray *) getIsrcsForRecording:(MBRecording *)recording;

@end

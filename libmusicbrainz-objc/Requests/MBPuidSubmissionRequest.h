//
// MBPuidSubmissionRequest.h
// libmusicbrainz-objc
//
// Created by Joachim LeBlanc on 7/16/12.
// Copyright (c) 2012.
// This program is made available under the terms of the MIT License.
//

#import "MBPostRequest.h"

@class MBRecording;

@interface MBPuidSubmissionRequest : MBPostRequest {
 @private
  NSMutableDictionary * _Puids;
}

- (void) addPuid:(NSString *)puid toRecording:(MBRecording *)recording;

- (void) removePuid:(NSString *)puid fromRecording:(MBRecording *)recording;

- (NSArray *) getPuidsForRecording:(MBRecording *)recording;

@end

//
// MBTagSubmissionRequest.h
// libmusicbrainz-objc
//
// Created by Joachim LeBlanc on 7/16/12.
// Copyright (c) 2012.
// This program is made available under the terms of the MIT License.
//

#import "MBPostRequest.h"

@interface MBTagSubmissionRequest : MBPostRequest
{
 @private
  NSMutableDictionary * _UserTags;
}

- (void) addUserTag:(NSString *)tag toEntity:(MBRateAndTaggableEntity *)entity;

- (void) removeUserTag:(NSString *)tag fromEntity:(MBRateAndTaggableEntity *)entity;

- (NSArray *) getUserTagsForEntity:(MBRateAndTaggableEntity *)entity;

@end

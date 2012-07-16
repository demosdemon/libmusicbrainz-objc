//
// MBRatingSubmissionRequest.h
// libmusicbrainz-objc
//
// Created by Joachim LeBlanc on 7/16/12.
// Copyright (c) 2012.
// This program is made available under the terms of the MIT License.
//

#import "MBPostRequest.h"

@interface MBRatingSubmissionRequest : MBPostRequest {
 @private
  NSMutableDictionary * _UserRatings;
}

- (void) setUserRating:(NSUInteger)rating forEntity:(MBRateAndTaggableEntity *)entity;
- (void) removeUserRatingForEntity:(MBRateAndTaggableEntity *)entity;
- (NSUInteger) getUserRatingForEntity:(MBRateAndTaggableEntity *)entity;

@end

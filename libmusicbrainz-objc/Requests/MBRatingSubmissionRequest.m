//
// MBRatingSubmissionRequest.m
// libmusicbrainz-objc
//
// Created by Joachim LeBlanc on 7/16/12.
// Copyright (c) 2012.
// This program is made available under the terms of the MIT License.
//

#import "MB.h"

@implementation MBRatingSubmissionRequest

- (id) init
{
  if (self = [super init]) {
    _EntityType = @"rating";
    _UserRatings = [NSMutableDictionary dictionary];
  }
  return self;
}

- (void) setUserRating:(NSUInteger)rating forEntity:(MBRateAndTaggableEntity *)entity
{
  if (rating == 0 || rating > 5) return;

  NSString * ElementName = entity.ElementName;
  NSMutableDictionary * typeDict = [_UserRatings objectForKey:ElementName];
  if (!typeDict) typeDict = [NSMutableDictionary dictionary];

  NSString * Id = entity.Id;

  [typeDict setObject:[NSNumber numberWithUnsignedInteger:rating] forKey:Id];

  [_UserRatings setObject:typeDict forKey:ElementName];
}
- (void) removeUserRatingForEntity:(MBRateAndTaggableEntity *)entity
{
  NSString * ElementName = entity.ElementName;
  NSMutableDictionary * typeDict = [_UserRatings objectForKey:ElementName];
  if (!typeDict) return;

  NSString * Id = entity.Id;

  if ([typeDict objectForKey:Id])
    [typeDict removeObjectForKey:Id];

  if ([typeDict count] > 0)
    [_UserRatings setObject:typeDict forKey:ElementName];
  else
    [_UserRatings removeObjectForKey:ElementName];
}

- (NSUInteger) getUserRatingForEntity:(MBRateAndTaggableEntity *)entity
{
  NOT_IMPLEMENTED();
}

@end

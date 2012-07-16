//
// MBTagSubmissionRequest.m
// libmusicbrainz-objc
//
// Created by Joachim LeBlanc on 7/16/12.
// Copyright (c) 2012.
// This program is made available under the terms of the MIT License.
//

#import "MB.h"
#import "MBTagSubmissionRequest.h"

@implementation MBTagSubmissionRequest

- (id) init
{
  if (self = [super init]) {
    _EntityType = @"tag";
    _UserTags = [NSMutableDictionary dictionary];
  }
  return self;
}

- (void) addUserTag:(NSString *)tag toEntity:(MBRateAndTaggableEntity *)entity
{
  NSString * ElementName = entity.ElementName;
  NSMutableDictionary * typeDict = [_UserTags objectForKey:ElementName];
  if (!typeDict) typeDict = [NSMutableDictionary dictionary];

  NSString * Id = entity.Id;
  NSMutableSet * tags = [typeDict objectForKey:Id];
  if (!tags) tags = [NSMutableSet set];

  [tags addObject:tag];

  [typeDict setObject:tags forKey:Id];

  [_UserTags setObject:typeDict forKey:ElementName];
}

- (void) removeUserTag:(NSString *)tag fromEntity:(MBRateAndTaggableEntity *)entity
{
  NSString * ElementName = entity.ElementName;
  NSMutableDictionary * typeDict = [_UserTags objectForKey:ElementName];
  if (!typeDict) return;

  NSString * Id = entity.Id;
  NSMutableSet * tags = [typeDict objectForKey:Id];
  if (!tags) return;

  [tags removeObject:tag];

  if ([tags count] > 0)
    [typeDict setObject:tags forKey:Id];
  else
    [typeDict removeObjectForKey:Id];

  if ([typeDict count] > 0)
    [_UserTags setObject:typeDict forKey:ElementName];
  else
    [_UserTags removeObjectForKey:ElementName];
}

- (NSArray *) getUserTagsForEntity:(MBRateAndTaggableEntity *)entity
{
  NOT_IMPLEMENTED();
}

@end

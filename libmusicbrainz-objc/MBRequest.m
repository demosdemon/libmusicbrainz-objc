//
// @file MBQuery.m
// @date Jul 02 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made avaliable under the terms of the MIT License.
//
// @brief Webservice request object

#if ! __has_feature(objc_arc)
# warning This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif

#import "MB.h"

@implementation MBRequest

- (void) submitRequestWithQuery:(MBQuery *)query
{

}

- (NSString *) url
{

}

- (NSData *) postdata
{
  
}

@synthesize RequestType = _RequestType;
@synthesize CompleteLists = _CompleteLists;
@synthesize EntityType = _EntityType;
@synthesize EntityId = _EntityId;
@synthesize Result = _Result;
@synthesize Error = _Error;
@synthesize Limit = _Limit;
@synthesize Offset = _Offset;

- (id) init
{
  if (self = [super init]) {
    _Parameters = [NSMutableDictionary dictionary];
    _CollectionResources = [NSMutableSet set];
    _IncParameters = [NSMutableSet set];
    _UserTags = [NSMutableDictionary dictionary];
    _UserRatings = [NSMutableDictionary dictionary];

    _RequestType = @"GET";
#if NUM_LIT
    _Limit = @25;
    _Offset = @0;
#else
    _Limit = [NSNumber numberWithInt:25];
    _Offset = [NSNumber numberWithInt:0];
#endif
  }
  return self;
}

- (void) setParameter:(NSString *)value forKey:(NSString *)key
{ [_Parameters setObject:value forKey:key]; }
- (void) removeParameterForKey:(NSString *)key
{ [_Parameters removeObjectForKey:key]; }
- (NSString *) getParameterForKey:(NSString *)key
{ [_Parameters objectForKey:key]; }

- (void) addCollectionResourceObject:(NSString *)resource
{ [_CollectionResources addObject:resource]; }
- (void) removeCollectionResourceObject:(NSString *)resource
{ [_CollectionResources removeObject:resource]; }

- (void) addIncParameterObject:(NSString *)inc
{
  [_IncParameters addObject:inc];
  [self setParameter:[[_IncParameters allObjects] componentsJoinedByString:@"+"]
              forKey:@"inc"];
}
- (void) removeIncParameterObject:(NSString *)inc
{
  [_IncParameters removeObject:inc];
  if ([_IncParameters count] > 0)
    [self setParameter:[[_IncParameters allObjects] componentsJoinedByString:@"+"]
                forKey:@"inc"];
  else
    [self removeParameterForKey:@"inc"];
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

- (void) setUserRating:(NSUInteger)rating forEntity:(MBRateAndTaggableEntity *)entity
{
  if (rating == 0 || rating > 5) return;

  NSString * ElementName = entity.ElementName;
  NSMutableDictionary * typeDict = [_UserTags objectForKey:ElementName];
  if (!typeDict) typeDict = [NSMutableDictionary dictionary];

  NSString * Id = entity.Id;

  [typeDict setObject:[NSNumber numberWithUnsignedInteger:rating] forKey:Id];

  [_UserTags setObject:typeDict forKey:ElementName];
}
- (void) removeUserRatingForEntity:(MBRateAndTaggableEntity *)entity
{
  NSString * ElementName = entity.ElementName;
  NSMutableDictionary * typeDict = [_UserTags objectForKey:ElementName];
  if (!typeDict) return;

  NSString * Id = entity.Id;

  if ([typeDict objectForKey:Id])
    [typeDict removeObjectForKey:Id];

  if ([typeDict count] > 0)
    [_UserTags setObject:typeDict forKey:ElementName];
  else
    [_UserTags removeObjectForKey:ElementName];
}


@end

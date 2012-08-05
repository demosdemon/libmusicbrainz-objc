//
// MBGetRequest.m
// libmusicbrainz-objc
//
// Created by Joachim LeBlanc on 7/16/12.
// Copyright (c) 2012.
// This program is made available under the terms of the MIT License.
//

#import "MB.h"
#import "MBGetRequest.h"

@implementation MBGetRequest

@synthesize RequestType = _RequestType;
@synthesize EntityType = _Entity;
@synthesize EntityId = _EntityId;

- (id) init
{
  if (self = [super init]) {
    _IncParameters = [NSMutableSet set];
    self.Offset = [NSNumber numberWithInt:25];
    self.Limit = [NSNumber numberWithInt:0];
  }
  return self;
}

- (NSNumber *) Offset
{ return [[self getParameterForKey:@"offset"] number]; }

- (void) setOffset:(NSNumber *)Offset
{ [self setParameter:[Offset stringValue] forKey:@"offset"]; }

- (NSNumber *) Limit
{ return [[self getParameterForKey:@"limit"] number]; }

- (void) setLimit:(NSNumber *)Limit
{ [self setParameter:[Limit stringValue] forKey:@"limit"]; }

- (NSString *) Query
{ return [[self getParameterForKey:@"query"] copy]; }

- (void) setQuery:(NSString *)Query
{ [self setParameter:[Query copy] forKey:@"query"]; }

- (void) addIncParameterObject:(NSString *)inc
{
  [_IncParameters addObject:[inc copy]];
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

- (NSString *) url
{
  switch (self.RequestType) {
    case MBRequestLookup:
      return [NSString stringWithFormat:@"%@/%@?%@", _Entity, _EntityId, self.parameterString];
    case MBRequestBrowse:
    case MBRequestSearch:
      return [NSString stringWithFormat:@"%@?%@", _Entity, self.parameterString];
    default:
      return nil;
  }
}

@end

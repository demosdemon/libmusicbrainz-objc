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

@synthesize EntityType = _Entity;
@synthesize EntityId = _EntityId;
@synthesize Result = _Result;
@synthesize Error = _Error;
@synthesize Limit = _Limit;
@synthesize Offset = _Offset;

- (id) init
{
  if (self = [super init]) {
    _RequestType = @"GET";
    _IncParameters = [NSMutableSet set];
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

@end

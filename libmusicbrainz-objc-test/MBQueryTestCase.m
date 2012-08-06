//
//  MBQueryTestCase.m
//  libmusicbrainz-objc
//
//  Created by Joachim LeBlanc on 7/11/12.
//  Copyright (c) 2012.
//  This program is made available under the terms of the MIT License.
//

#import "GTMSenTestCase.h"
#import "MB.h"

@interface MBQueryTestCase : GTMTestCase
{
  NSLock * finishedLock;
  BOOL finished;
}
@end

@implementation MBQueryTestCase

- (id) init
{
  self = [super init];
  if (self == nil) return nil;

  finishedLock = [[NSLock alloc] init];
  finished = NO;

  return self;
}

- (void) setUp
{
  [super setUp];

  // setUp
}

- (void) tearDown
{
  // tearDown

  [super tearDown];
}

- (void) testConnection
{
  MBConnection * conn = [MBConnection connection];
  [conn enqueueRequest:[MBRequest lookupWithEntity:MBEntityArtist
                                              mbid:@"7e84f845-ac16-41fe-9ff8-df12eb32af55"
                                     incParameters:(MBIncParameterAliases | MBIncParameterArtistCredits | MBIncParameterArtistRels | MBIncParameterRecordings | MBIncParameterReleaseGroups)]
             onSuccess:^(MBRequest *request, MBMetadata *data) {
    DLogObject(request);
    DLogObject(data);
    @synchronized (finishedLock) {
      finished = YES;
    }
  }
             onFailure:^(MBRequest *request, NSError *error, NSData *response) {
    DLogObject(request);
    DLogObject(error)
    DLogObject(response);
    @synchronized (finishedLock) {
      finished = YES;
    }
  }];

  do
    @synchronized (finishedLock) {
      if (finished) {
        DLog(@"Break");
        break;
      }
    }
  while ([[NSRunLoop currentRunLoop] runMode:NSDefaultRunLoopMode beforeDate:[NSDate distantFuture]]);
}

@end


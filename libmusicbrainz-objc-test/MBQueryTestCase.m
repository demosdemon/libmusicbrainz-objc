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
@property (atomic, assign) BOOL Finished;
@end

@implementation MBQueryTestCase

- (id) init
{
  self = [super init];
  if (self == nil) return nil;

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
	self.Finished = NO;
  MBConnection * conn = [MBConnection connection];
  [conn enqueueRequest:[MBRequest lookupWithEntity:MBEntityArtist
                                              mbid:@"7e84f845-ac16-41fe-9ff8-df12eb32af55"
                                     incParameters:(MBIncParameterAliases | MBIncParameterArtistCredits | MBIncParameterArtistRels | MBIncParameterRecordings | MBIncParameterReleaseGroups)] onSuccess:^(MBRequest *request, MBMetadata *data) {
		STAssertNotNil(data, @"data is nil");
		self.Finished = YES;
  } onFailure:^(MBRequest *request, NSError *error, NSData *response) {
		STAssertNil(error, @"request = %@, response = %@", request ? [request url] : @"nil", response ? [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding] : @"nil");
		self.Finished = YES;
  }];
  while (!self.Finished && [[NSRunLoop currentRunLoop] runMode:NSDefaultRunLoopMode beforeDate:[NSDate distantFuture]]);
}

- (void) testQuery
{
	self.Finished = NO;
	MBConnection * conn = [MBConnection connection];

	[conn enqueueRequest:[MBRequest searchForEntity:MBEntityArtist query:@"alias:MB Test Artist" limit:@5 offset:@0] onSuccess:^(MBRequest *request, MBMetadata *data) {
		BOOL foundTestArtist = NO;
		for (MBArtist * artist in data.ArtistList)
			if ([artist.Id equals:@"7e84f845-ac16-41fe-9ff8-df12eb32af55"]) {
				foundTestArtist = YES;
				break;
			}
		STAssertTrue(foundTestArtist, @"Did not find 7e84f845-ac16-41fe-9ff8-df12eb32af55 in the results");
		self.Finished = YES;
	} onFailure:^(MBRequest *request, NSError *error, NSData *response) {
		ALog(
		//STAssertNil(error,
				 @"error = %@, request = %@, response = %@", error ?: @"nil", request ? [request url] : @"nil", response ? [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding] : @"nil");
		self.Finished = YES;
	}];

	while (!self.Finished && [[NSRunLoop currentRunLoop] runMode:NSDefaultRunLoopMode beforeDate:[NSDate distantFuture]]);
}

@end


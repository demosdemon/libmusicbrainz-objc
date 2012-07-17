//
//  MBRequestTestCase.m
//  libmusicbrainz-objc
//
//  Created by Joachim LeBlanc on 7/11/12.
//  Copyright (c) 2012.
//  This program is made available under the terms of the MIT License.
//

#import "GTMSenTestCase.h"
#import "MB.h"

#define ENTITY(xmlstring) [MBEntity entityWithElement:[[NSXMLElement alloc] initWithXMLString:(xmlstring) error:nil]]

@interface NSData (MBStringFromData)
- (NSString *) string;
- (NSString *) stringUsingEncoding:(NSStringEncoding)encoding;
@end

@implementation NSData (MBStringFromData)
- (NSString *) string
{ return [self stringUsingEncoding:NSUTF8StringEncoding]; }
- (NSString *) stringUsingEncoding:(NSStringEncoding)encoding
{ return [[NSString alloc] initWithData:self encoding:encoding]; }
@end

@interface MBRequestTestCase : GTMTestCase
@end

@implementation MBRequestTestCase

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

- (void) testBarcodeRequest
{
  NSData * testData = [@"<metadata xmlns=\"http://musicbrainz.org/ns/mmd-2.0#\"><release-list><release id=\"047ea202-b98d-46ae-97f7-0180a20ee5cf\"><barcode>9780262560933</barcode></release></release-list></metadata>" dataUsingEncoding:NSUTF8StringEncoding];
  MBRelease * release = ENTITY(@"<release id=\"047ea202-b98d-46ae-97f7-0180a20ee5cf\"></release>");
  MBBarcodeSubmissionRequest * request = [[MBBarcodeSubmissionRequest alloc] init];
  [request addBarcode:@"9780262560933" forRelease:release];
  NSData * postData = [request postdata];
  STAssertEqualObjects(testData, postData, @"%@ != %@", [testData string], [postData string]);
  STAssertEqualStrings([request url], @"release/?", @"%@ != %@", [request url], @"release/?");
}

- (void) testIsrcRequest
{
  NSData * testData = [@"<metadata xmlns=\"http://musicbrainz.org/ns/mmd-2.0#\"><recording-list><recording id=\"b9991644-7275-44db-bc43-fff6c6b4ce69\"><isrc-list count=\"1\"><isrc id=\"JPB600601201\"></isrc></isrc-list></recording><recording id=\"75c961c9-6e00-4861-9c9d-e6ca90d57342\"><isrc-list count=\"1\"><isrc id=\"JPB600523201\"></isrc></isrc-list></recording></recording-list></metadata>" dataUsingEncoding:NSUTF8StringEncoding];
  MBRecording * recording1 = ENTITY(@"<recording id=\"b9991644-7275-44db-bc43-fff6c6b4ce69\"/>");
  MBRecording * recording2 = ENTITY(@"<recording id=\"75c961c9-6e00-4861-9c9d-e6ca90d57342\"/>");
  MBIsrcSubmissionRequest * request = [[MBIsrcSubmissionRequest alloc] init];
  [request addIsrc:@"JPB600601201" toRecording:recording1];
  [request addIsrc:@"JPB600523201" toRecording:recording2];
  NSData * postData = [request postdata];
  STAssertEqualObjects(testData, postData, @"%@ != %@", [testData string], [postData string]);
  STAssertEqualStrings([request url], @"recording/?", @"%@ != %@", [request url], @"recording/?");
}

- (void) testDeleteRequest
{
  MBCollection * collection = ENTITY(@"<collection id=\"f4784850-3844-11e0-9e42-0800200c9a66\" />");
  MBDeleteRequest * request = [[MBDeleteRequest alloc] init];
  [request setCollection:collection];
  [request addRelease:ENTITY(@"<release id=\"455641ea-fff4-49f6-8fb4-49f961d8f1ad\" />")];
  STAssertEqualStrings([request url], @"collection/f4784850-3844-11e0-9e42-0800200c9a66/releases/455641ea-fff4-49f6-8fb4-49f961d8f1ad?", @"%@ != %@", [request url], @"collection/f4784850-3844-11e0-9e42-0800200c9a66/releases/455641ea-fff4-49f6-8fb4-49f961d8f1ad;c410a773-c6eb-4bc0-9df8-042fe6645c63?");
}

- (void) testPutRequest
{
  MBCollection * collection = ENTITY(@"<collection id=\"f4784850-3844-11e0-9e42-0800200c9a66\" />");
  MBPutRequest * request = [[MBPutRequest alloc] init];
  [request setCollection:collection];
  [request addRelease:ENTITY(@"<release id=\"c410a773-c6eb-4bc0-9df8-042fe6645c63\" />")];
  [request addRelease:ENTITY(@"<release id=\"455641ea-fff4-49f6-8fb4-49f961d8f1ad\" />")];
  STAssertEqualStrings([request url], @"collection/f4784850-3844-11e0-9e42-0800200c9a66/releases/c410a773-c6eb-4bc0-9df8-042fe6645c63;455641ea-fff4-49f6-8fb4-49f961d8f1ad?", @"%@ != %@", [request url], @"collection/f4784850-3844-11e0-9e42-0800200c9a66/releases/455641ea-fff4-49f6-8fb4-49f961d8f1ad;c410a773-c6eb-4bc0-9df8-042fe6645c63?");
}

- (void) testPuidRequest
{
  NSData * testData = [@"<metadata xmlns=\"http://musicbrainz.org/ns/mmd-2.0#\"><recording-list><recording id=\"66454646-b98d-46ae-97f7-0180a20ee5cf\"><puid-list><puid id=\"78787887-3893-4d3b-aa7d-72e79609e386\"></puid></puid-list></recording><recording id=\"047ea202-b98d-46ae-97f7-0180a20ee5cf\"><puid-list><puid id=\"2a232ad3-3893-4d3b-aa7d-72e79609e386\"></puid><puid id=\"1d9e8ed6-3893-4d3b-aa7d-72e79609e386\"></puid></puid-list></recording></recording-list></metadata>" dataUsingEncoding:NSUTF8StringEncoding];
  MBRecording * recording1 = ENTITY(@"<recording id=\"047ea202-b98d-46ae-97f7-0180a20ee5cf\"/>");
  MBRecording * recording2 = ENTITY(@"<recording id=\"66454646-b98d-46ae-97f7-0180a20ee5cf\"/>");
  MBPuidSubmissionRequest * request = [[MBPuidSubmissionRequest alloc] init];
  [request addPuid:@"1d9e8ed6-3893-4d3b-aa7d-72e79609e386" toRecording:recording1];
  [request addPuid:@"2a232ad3-3893-4d3b-aa7d-72e79609e386" toRecording:recording1];
  [request addPuid:@"78787887-3893-4d3b-aa7d-72e79609e386" toRecording:recording2];
  STAssertEqualObjects([request postdata], testData, @"%@ != %@", request.postdata.string, testData.string);
  STAssertEqualStrings(request.url, @"recording/?", @"%@ != %@", request.url, @"recording/?");
}

@end


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
  MBRelease * release = [MBEntity entityWithElement:[[NSXMLElement alloc] initWithXMLString:@"<release id=\"047ea202-b98d-46ae-97f7-0180a20ee5cf\"></release>" error:nil]];
  MBBarcodeSubmissionRequest * request = [[MBBarcodeSubmissionRequest alloc] init];
  [request addBarcode:@"9780262560933" forRelease:release];
  NSData * postData = [request postdata];
  STAssertEqualObjects(testData, postData, @"%@ != %@", [testData string], [postData string]);
}

@end


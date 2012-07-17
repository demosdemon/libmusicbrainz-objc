//
// MBBarcodeSubmissionRequest.m
// libmusicbrainz-objc
//
// Created by Joachim LeBlanc on 7/16/12.
// Copyright (c) 2012.
// This program is made available under the terms of the MIT License.
//

#import "MB.h"
#import "MBBarcodeSubmissionRequest.h"

static NSComparisonResult (^CaseInsensitiveStringComparator)(NSString *, NSString *) = ^NSComparisonResult(NSString * obj1, NSString * obj2) {
  return [obj1 caseInsensitiveCompare:obj2];
};

@implementation MBBarcodeSubmissionRequest

- (id) init
{
  if (self = [super init]) {
    _EntityType = @"release";
    _Barcodes = [NSMutableDictionary dictionary];
  }
  return self;
}

- (void) addBarcode:(NSString *)barcode forRelease:(MBRelease *)release
{ [_Barcodes setObject:[barcode copy] forKey:release.Id]; }

- (void) removeBarcode:(NSString *)barcode fromRelease:(MBRelease *)release
{ [_Barcodes removeObjectForKey:release.Id]; }

- (NSString *) getBarcodeForRelease:(MBRelease *)release
{ return [_Barcodes objectForKey:release.Id]; }

- (NSData *) postdata
{
  NSXMLElement * metadata = [NSXMLElement elementWithName:@"metadata"];
  NSXMLNode * xmlns = [NSXMLNode attributeWithName:@"xmlns" stringValue:@"http://musicbrainz.org/ns/mmd-2.0#"];
  [metadata addAttribute:xmlns];
  
  __block NSXMLElement * releaseList = [NSXMLElement elementWithName:@"release-list"];
  [_Barcodes enumerateKeysAndObjectsUsingBlock:^(NSString * releaseId, NSString * barcode, BOOL *stop) {
    NSXMLElement * release = [NSXMLElement elementWithName:@"release"];
    [release addAttribute:[NSXMLNode attributeWithName:@"id" stringValue:releaseId]];
    [release addChild:[NSXMLElement elementWithName:@"barcode" stringValue:barcode]];
    [releaseList addChild:release];
  }];

  [metadata addChild:releaseList];
  return [[metadata XMLString] dataUsingEncoding:NSUTF8StringEncoding];
}

@end

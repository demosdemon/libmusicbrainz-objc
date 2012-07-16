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

@implementation MBBarcodeSubmissionRequest

- (id) init
{
  if (self = [super init]) {
    _EntityType = @"release";
    _Barcodes = [NSMutableDictionary dictionary];
  }
}

- (void) addBarcode:(NSString *)barcode forRelease:(MBRelease *)release
{
  NOT_IMPLEMENTED();
}

- (void) removeBarcode:(NSString *)barcode fromRelease:(MBRelease *)release
{
  NOT_IMPLEMENTED();
}

- (NSString *) getBarcodeForRelease:(MBRelease *)release
{
  NOT_IMPLEMENTED();
}

@end

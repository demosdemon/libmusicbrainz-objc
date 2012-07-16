//
// MBBarcodeSubmissionRequest.h
// libmusicbrainz-objc
//
// Created by Joachim LeBlanc on 7/16/12.
// Copyright (c) 2012.
// This program is made available under the terms of the MIT License.
//

#import "MBPostRequest.h"

@class MBRelease;

@interface MBBarcodeSubmissionRequest : MBPostRequest {
 @private
  NSMutableDictionary * _Barcodes;
}

- (void) addBarcode:(NSString *)barcode forRelease:(MBRelease *)release;

- (void) removeBarcode:(NSString *)barcode fromRelease:(MBRelease *)release;

- (NSString *) getBarcodeForRelease:(MBRelease *)release;

@end

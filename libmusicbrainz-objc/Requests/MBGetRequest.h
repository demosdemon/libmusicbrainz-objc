//
// MBGetRequest.h
// libmusicbrainz-objc
//
// Created by Joachim LeBlanc on 7/16/12.
// Copyright (c) 2012.
// This program is made available under the terms of the MIT License.
//

#import "MBRequest.h"

@interface MBGetRequest : MBRequest {
 @private
  NSMutableSet * _IncParameters;
  NSString * _Entity;
}

/// Request Entity Type
///
/// Required. Default is `""` and is not a valid entity. Valid entities are:
/// * artist
/// * label
/// * recording
/// * release
/// * release-group
/// * work
/// * collection
/// * discid
/// * puid
/// * isrc, and
/// * iswc
///
/// Note: collection requires authentication. @see [MBQuery setUsername:Password:]
@property (copy, nonatomic, readwrite) NSString * EntityType;

/// Add `inc` Parameter to Query
///
/// Subqueries for the EntityType.
///
- (void) addIncParameterObject:(NSString *)inc;
- (void) removeIncParameterObject:(NSString *)inc;

/// Result Data
///
/// All webservice replies are wrapped in a `<metadata/>` element. This will be
/// set by the MBQuery object handling the request
@property (retain, nonatomic) MBMetadata * Result;

/// Request Error
///
/// Any error information as to why the request failed will be stored in Error.
/// This will be set by the MBQuery object handling the request.
@property (retain, nonatomic) NSError * Error;

/// Paged Results Limit
///
/// Limit is the number of elements returned in a browse request. The default
/// is 25 and can be increased to 100.
@property (retain, nonatomic) NSNumber * Limit;

/// Paged Results Offset
///
/// Offset the number of elements in a paged request. Page 1 would be offset=0,
/// Page 2 would be offset=Limit, Page 3 would be offset=2*limit, etc.
@property (retain, nonatomic) NSNumber * Offset;

@end

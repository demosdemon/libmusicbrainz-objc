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
  MBRequestType _RequestType;
  NSString * _EntityId;
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

@property (assign, nonatomic) MBRequestType RequestType;
@property (copy, nonatomic) NSString * Query;
/// Add `inc` Parameter to Query
///
/// Subqueries for the EntityType.
///
- (void) addIncParameterObject:(NSString *)inc;
- (void) removeIncParameterObject:(NSString *)inc;

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

/// Request Entity Id
///
/// When requesting metadata for a specific entity, set EntityId to the MBID for
/// that entity.
@property (copy, nonatomic) NSString * EntityId;

@end

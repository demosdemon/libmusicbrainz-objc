//
// @file MBQuery.h
// @date Jul 02 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made avaliable under the terms of the MIT License.
//
// @brief Webservice request object

@class MBQuery, MBRateAndTaggableEntity, MBMetadata;

/// Request interface for webservice queries.
///
/// Handles only one request at a time, but will group multiple requests of
/// similar nature. For example, adding releases to a collection will be queued
/// until submitRequestWithQuery: is called.
///
/// See the (XML Webservice Documentation)[http://musicbrainz.org/doc/XML_Web_Service/Version_2] 
/// for more information about forming webservice queries.
@interface MBRequest : NSObject {
 @private
  NSString * _requestMethod;
  NSString * _entityType;
  NSString * _entityId;
  NSMutableDictionary * _parameters;
  NSMutableSet * _collectionResources;
  NSMutableSet * _incParameters;
  BOOL _completeLists;
}

/// Web Service Request Type
///
/// Can be one of four strings, `"GET"`, `"POST"`, `"PUT"`, `"DELETE"`
/// * `"GET"` - regular get requests with xml response.
/// * `"POST"` - post data to webservice, only tags, ratings, PUIDs, Barcodes,
///              and ISRCs are accepted
/// * `"PUT"` - add resource to collection
/// * `"DELETE"` - remove resource from collection
/// Default is `"GET"`
@property (copy, nonatomic) NSString * RequestType;

/// Complete Paged Lists
///
/// The web service attaches a count and offset attribute to `*-list` elements
/// that are larger than the requested limit (default is 25). If CompleteLists
/// is set to `YES`, the library will request the extra information. This 
/// will take longer to get a response because of the web service's rate limit.
/// If CompleteLists is `NO` (the default), you are responsible for the offset
/// requests.
@property (assign, nonatomic) BOOL CompleteLists;

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
@property (copy, nonatomic) NSString * EntityType;

/// Request Entity Id
///
/// When requesting metadata for a specific entity, set EntityId to the MBID for
/// that entity. 
@property (copy, nonatomic) NSString * EntityId;

/// URL Parameters
///
/// Any additional URL parameters needed for your request. Most necessary 
/// parameters are handled by other methods in this object.
- (void) setParameter:(NSString *)value forKey:(NSString *)key;
- (void) removeParameterForKey:(NSString *)key;
- (NSString *) getParameterForKey:(NSString *)key;

- (void) addCollectionResourceObject:(NSString *)resource;
- (void) removeCollectionResourceObject:(NSString *)resource;
- (NSMutableSet *) setCollectionResource;

/// Add `inc` Parameter to Query
///
/// Subqueries for the EntityType.
///
- (void) addIncParameterObject:(NSString *)inc;
- (void) removeIncParameterObject:(NSString *)inc;
- (NSMutableSet *) setIncParameter;

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
@property (assign, nonatomic) NSUInteger * Limit;

/// Paged Results Offset
///
/// Offset the number of elements in a paged request. Page 1 would be offset=0,
/// Page 2 would be offset=Limit, Page 3 would be offset=2*limit, etc.
@property (assign, nonatomic) NSUInteger * offset;

- (void) addUserTag:(NSString *)tag toEntity:(MBRateAndTaggableEntity *)entity;
- (void) remoteUserTag:(NSString *)tag fromEntity:(MBRateAndTaggableEntity *)entity;
- (void) setUserRating:(NSUInteger)rating forEntity:(MBRateAndTaggableEntity *)entity;

- (void) submitRequestWithQuery:(MBQuery *)query;

- (NSString *) url;
- (NSData *) postdata;

@end

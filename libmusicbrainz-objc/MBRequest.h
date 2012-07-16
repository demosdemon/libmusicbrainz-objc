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
  NSMutableDictionary * _Parameters;
 @protected
  NSString * _RequestType;
  NSString * _EntityType;
}

@property (copy, nonatomic, readonly) NSString * EntityType;

/// Web Service Request Type
///
/// Can be one of four strings, `"GET"`, `"POST"`, `"PUT"`, `"DELETE"`
/// * `"GET"` - regular get requests with xml response.
/// * `"POST"` - post data to webservice, only tags, ratings, PUIDs, Barcodes,
///              and ISRCs are accepted
/// * `"PUT"` - add resource to collection
/// * `"DELETE"` - remove resource from collection
/// Default is `"GET"`
@property (copy, nonatomic, readonly) NSString * RequestType;

/// Complete Paged Lists
///
/// The web service attaches a count and offset attribute to `*-list` elements
/// that are larger than the requested limit (default is 25). If CompleteLists
/// is set to `YES`, the library will request the extra information. This 
/// will take longer to get a response because of the web service's rate limit.
/// If CompleteLists is `NO` (the default), you are responsible for the offset
/// requests.
///
/// TODO: READONLY for now
@property (assign, nonatomic, readonly) BOOL CompleteLists;

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

- (void) submitRequestWithQuery:(MBQuery *)query;

- (NSString *) url;

@end

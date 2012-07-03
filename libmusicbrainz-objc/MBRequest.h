//
// @file MBQuery.h
// @date Jul 02 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made avaliable under the terms of the MIT License.
//
// @brief Webservice request object

#import <Foundation/Foundation.h>
#import "MBQuery.h"

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
/// is set to `YES`, the library will add request the extra information. This 
/// will take longer to get a response because of the web service's rate limit.
/// If CompleteLists is `NO` (the default), you are responsible for the offset
/// requests.
@property (assign, nonatomic) BOOL CompleteLists;

/// Request Entity
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
/// Note: collection requires authentication. @see [MBQuery setUsername:Password:]
@property (copy, nonatomic) NSString * EntityType;
@property (copy, nonatomic) NSString * EntityId;

- (void) setParameterValue:(NSString *)value forKey:(NSString *)key;
- (void) removeParameterForKey:(NSString *)key;
- (NSString *) getParameterForKey:(NSString *)key;

- (void) addCollectionResourceObject:(NSString *)resource;
- (void) removeCollectionResourceObject:(NSString *)resource;
- (NSMutableSet *) setCollectionResource;

- (void) addIncParameterObject:(NSString *)inc;
- (void) removeIncParameterObject:(NSString *)inc;
- (NSMutableSet *) setIncParameter;


@property (retain, nonatomic) MBMetadata * Result;
@property (retain, nonatomic) NSError * Error;

- (NSString *) url;
- (NSData *) postdata;

@end

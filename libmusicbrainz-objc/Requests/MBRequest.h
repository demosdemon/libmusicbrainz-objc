//
// @file MBQuery.h
// @date Jul 02 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made avaliable under the terms of the MIT License.
//
// @brief Webservice request object

typedef enum {
  MBRequestLookup,
  MBRequestBrowse,
  MBRequestSearch,
  MBRequestSubmit,
} MBRequestType;

typedef enum {
  MBEntityArtist,
  MBEntityCollection,
  MBEntityDiscid,
  MBEntityIsrc,
  MBEntityIswc,
  MBEntityLabel,
  MBEntityPuid,
  MBEntityRating,
  MBEntityRecording,
  MBEntityRelease,
  MBEntityReleaseGroup,
  MBEntityTag,
  MBEntityWork,
} MBEntityType;

extern NSString * MBEntityToNSString(MBEntityType type);

typedef enum {
  MBIncParameterAliases            = (1 <<  0),
  MBIncParameterArtistCredits      = (1 <<  1),
  MBIncParameterArtistRels         = (1 <<  2),
  MBIncParameterArtists            = (1 <<  3),
  MBIncParameterDiscids            = (1 <<  4),
  MBIncParameterIsrcs              = (1 <<  5),
  MBIncParameterLabelRels          = (1 <<  6),
  MBIncParameterLabels             = (1 <<  7),
  MBIncParameterMedia              = (1 <<  8),
  MBIncParameterPuids              = (1 <<  9),
  MBIncParameterRatings            = (1 << 10),
  MBIncParameterRecordingLevelRels = (1 << 11),
  MBIncParameterRecordingRels      = (1 << 12),
  MBIncParameterRecordings         = (1 << 13),
  MBIncParameterReleaseGroupRels   = (1 << 14),
  MBIncParameterReleaseGroups      = (1 << 15),
  MBIncParameterReleaseRels        = (1 << 16),
  MBIncParameterReleases           = (1 << 17),
  MBIncParameterTags               = (1 << 18),
  MBIncParameterUrlRels            = (1 << 19),
  MBIncParameterUserRatings        = (1 << 20),
  MBIncParameterUserTags           = (1 << 21),
  MBIncParameterVariousArtists     = (1 << 22),
  MBIncParameterWorkLevelRels      = (1 << 23),
  MBIncParameterWorkRels           = (1 << 24),
  MBIncParameterWorks              = (1 << 25),
} MBIncParameterType;

extern NSArray * MBIncParameterToNSStringArray(MBIncParameterType type);

@class MBQuery, MBRateAndTaggableEntity, MBMetadata;

@class MBBarcodeSubmissionRequest, MBDeleteRequest, MBIsrcSubmissionRequest;
@class MBPuidSubmissionRequest, MBRatingSubmissionRequest, MBTagSubmissionRequest;
@class MBPutRequest, MBGetRequest;
@class MBRelease, MBRecording, MBCollection;

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
  NSString * _RequestMethod;
}

@property (nonatomic, readonly) NSString * RequestMethod;

/// URL Parameters
///
/// Any additional URL parameters needed for your request. Most necessary 
/// parameters are handled by other methods in this object.
- (void) setParameter:(NSString *)value forKey:(NSString *)key;
- (void) removeParameterForKey:(NSString *)key;
- (NSString *) getParameterForKey:(NSString *)key;

- (NSString *) url;
- (NSString *) parameterString;

+ (MBBarcodeSubmissionRequest *) addBarcode:(NSString *)barcode
                                 forRelease:(MBRelease *)release;
/// @param barcodes each index must contain either an NSString or an NSArray of
///   NSStrings.
/// @param releases each index must contain an MBRelease corresponding to the
///   same index in barcodes
+ (MBBarcodeSubmissionRequest *) addBarcodes:(NSArray *)barcodes
                                 forReleases:(NSArray *)releases;

+ (MBDeleteRequest *) deleteRelease:(MBRelease *)release
                     fromCollection:(MBCollection *)collection;
+ (MBDeleteRequest *) deleteReleases:(NSArray *)releases
                      fromCollection:(MBCollection *)collection;
+ (MBPutRequest *) addRelease:(MBRelease *)release
                 toCollection:(MBCollection *)collection;
+ (MBPutRequest *) addReleases:(NSArray *)releases
                  toCollection:(MBCollection *)collection;

+ (MBIsrcSubmissionRequest *) addIsrc:(NSString *)isrc
                          toRecording:(MBRecording *)recording;
/// @param isrcs each index must contain either an NSString or an NSArray of
///   NSStrings.
/// @param recordings each index must contain an MBRecording corresponding to the
///   same index in isrcs
+ (MBIsrcSubmissionRequest *) addIsrcs:(NSArray *)isrcs
                          toRecordings:(NSArray *)recordings;

+ (MBPuidSubmissionRequest *) addPuid:(NSString *)puid
                          toRecording:(MBRecording *)recording;
/// @param puids each index must contain either an NSString or an NSArray of
///   NSStrings.
/// @param recordings each index must contain an MBRecording corresponding to the
///   same index in puids
+ (MBPuidSubmissionRequest *) addPuids:(NSArray *)puids
                          toRecordings:(NSArray *)recording;

+ (MBRatingSubmissionRequest *) addRating:(NSNumber *)rating
                                 toEntity:(MBRateAndTaggableEntity *)entity;
/// @param ratings each index must contain an NSNumber representing a number from 1-5
/// @param recordings each index must contain an MBRateAndTaggableEntity
///   corresponding to the same index in ratings
+ (MBRatingSubmissionRequest *) addRating:(NSArray *)ratings
                               toEntities:(NSArray *)entities;

+ (MBTagSubmissionRequest *) addTag:(NSString *)tag
                           toEntity:(MBRateAndTaggableEntity *)entity;
/// @param tags each index must contain either an NSString or an NSArray of
///   NSStrings.
/// @param recordings each index must contain an MBRateAndTaggableEntity
///   corresponding to the same index in ratings
+ (MBTagSubmissionRequest *) addTags:(NSArray *)tags
                          toEntities:(NSArray *)entities;

+ (MBGetRequest *) lookupWithEntity:(MBEntityType) entity
                               mbid:(NSString*)mbid
                      incParameters:(MBIncParameterType) incs;

+ (MBGetRequest *) browseForEntity:(MBEntityType) entity
                        withEntity:(MBEntityType) type
                              mbid:(NSString*)mbid
                             limit:(NSNumber*)limit
                            offset:(NSNumber*)offset
                     incParameters:(MBIncParameterType) incs;

+ (MBGetRequest *) searchForEntity:(MBEntityType) entity
                             query:(NSString*)query
                             limit:(NSNumber*)limit
                            offset:(NSNumber*)offset;


@end

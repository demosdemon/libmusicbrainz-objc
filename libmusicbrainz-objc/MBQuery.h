//
// @file MBQuery.h
// @date Jun 06 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made avaliable under the terms of the MIT License.
//
// @brief Query object for handling communications with MusicBrainz
//   webservice.

#import "ASIHTTPRequestDelegate.h"
#import "MBUtils.h"

@protocol MBQueryDelegate;

@class MBQuery, MBMetadata, MBRateAndTaggableEntity, MBRelease, MBCollection;
@class MBIsrc, MBRecording, MBRequest, MBPostRequest, MBPutRequest;
@class MBDeleteRequest, MBGetRequest;

typedef void(^MBQuerySuccessHandler)(MBQuery * query, NSDictionary * request, MBMetadata * result);
typedef void(^MBQueryErrorHandler)(MBQuery * query, NSDictionary * request, NSError * error);

/// Main interface with the webservice.
///
/// MBQuery handles all communication to and from the webservice. Use MBRequest
/// to form the request. Use MBQueryDelegate to receive callbacks on success
/// or failure. If the request fails due to network connectivity, MBQuery
/// will not resend the request.
@interface MBQuery : NSObject <ASIHTTPRequestDelegate>
{
 @private
  NSString *_UserAgent;
  NSString *_Server;
  int _Port;
  
  NSURLCredential *_Credentials;

  __cpt_weak MBQueryErrorHandler _ErrorHandler;
  __cpt_weak MBQuerySuccessHandler _SuccessHandler;
}

#pragma mark - Initializers
/// Initializes with default server and port
///
/// MBQuery must be initialized with a user agent string. If the string is empty
/// nil is returned. delegate must also not be nil. Default server:Port is
/// musicbrainz.org:80
///
/// @param ua User Agent string to report to the webservice for mutable requests.
/// The recommended format is "application-version", where version does not
/// contain a - character. @warning ua must not be empty or nil.
///
/// @param delegate MBQueryDelegate that recieves callbacks for recieved data
- (id) initWithUserAgent:(NSString *)ua;

/// Main initializer.
///
/// MBQuery must be initialized with a user agent string. If the string is empty
/// nil is returned. delegate must also not be nil.
///
/// @param ua User Agent string to report to the webservice for mutable requests.
/// The recommended format is "application-version", where version does not
/// contain a - character. ua must not be empty or nil.
///
/// @param delegate MBQueryDelegate that recieves callbacks for recieved data
/// @param server Server to connect to.
/// @param port Port to use.
- (id) initWithUserAgent:(NSString *)ua
                  Server:(NSString *)server
                    Port:(int)port;

#pragma mark - Properties

/// User Agent string.
///
/// Client name to report to the webservice for mutable requests. The
/// recommended format is "application-version", where version does not contain
/// a - character.
/// @warning ua must not be empty or nil.
@property (copy, nonatomic) NSString * UserAgent;

/// Server to connect to.
///
/// Default is musicbrainz.org
@property (copy, nonatomic) NSString * Server;

/// Port to use when connecting.
///
/// Default is 80
@property (assign, nonatomic) int Port;

@property (cpt_weak_property, nonatomic) MBQuerySuccessHandler SuccessHandler;
@property (cpt_weak_property, nonatomic) MBQueryErrorHandler ErrorHandler;

/// Set the username and password to authenticate with when making mutable
/// requests or getting user specific information, like collections,
/// user-ratings, and user-tags
///
/// The library assumes no persistence for this data, username and password
/// will persist until at least the end of life of this object.
///
/// @param username username to authenticate with
/// @param password password to authenticate with
-(void) setUsername:(NSString *)username
           Password:(NSString *)password;

#pragma mark - Instance Methods

- (void) submitGetRequest:(MBGetRequest*)request;
- (void) submitPostRequest:(MBPostRequest*)request;
- (void) submitPutRequest:(MBPutRequest*)request;
- (void) submitDeleteRequest:(MBDeleteRequest*)request;
@end

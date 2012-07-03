//
// @file MBQuery.h
// @date Jun 06 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made avaliable under the terms of the MIT License.
//
// @brief Query object for handling communications with MusicBrainz
//   webservice.

#import <Foundation/Foundation.h>
#import "ASIHTTPRequestDelegate.h"
#import "MBQueryDelegate.h"
#import "Entities/MBMetadata.h"
#import "Entities/MBRateAndTaggableEntity.h"
#import "Entities/MBRelease.h"
#import "Entities/MBCollection.h"
#import "Entities/MBISRC.h"
#import "Entities/MBRecording.h"

@class MBQuery;

/// Main interface with the webservice, handles all communication to and from
/// the webservice.
@interface MBQuery : NSObject <ASIHTTPRequestDelegate>
{
 @private
  id<MBQueryDelegate> _delegate;
  NSString *_useragent;
  NSString *_server;
  NSInteger _port;
  
  NSURLCredential *_credentials;
  
  NSMutableDictionary *_submissionQueue;
  
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
- (id) initWithUserAgent:(NSString *)ua
                Delegate:(id<MBQueryDelegate>)delegate;

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
               Delegate:(id<MBQueryDelegate>)delegate
                 Server:(NSString *)server
                   Port:(NSInteger)port;

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
@property (assign, nonatomic) NSInteger Port;
/// MBQueryDelegate that recieves callbaks for recieved data
@property (retain, atomic) id<MBQueryDelegate> Delegate;

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
/// Submits all queued posts or puts.
///
/// Must call setUsername:Password: before calling or else requests will fail
- (void) submitQueue;

/// Query the webservice. Will call [MBQueryDelegate query:didReceiveResult:]
/// on success else else [MBQueryDelegate query:didFailWithError:] on failure
///
/// @param entity type of entity to lookup (artist, release, etc)
/// @param idstr MBID for the entity
/// @param resource Currently only used for Collections
/// @param parameters paramters to use (e.g. inc). If parameters contains the
/// key "inc", the value must be a type of NSArray
- (void) queryWithEntity:(NSString *)entity 
                     uid:(NSString *)idstr 
                resource:(NSString *)resource 
              parameters:(NSDictionary *)parameters;

@end


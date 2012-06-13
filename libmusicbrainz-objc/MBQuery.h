///
/// @file MBQuery.h
/// @date Jun 06 2012
/// @copyright
///   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
///   This program is made avaliable under the terms of the MIT License.
///
/// @brief Query object for handling communications with MusicBrainz
///   webservice.

#import <Foundation/Foundation.h>
#import "Entities/RateAndTaggableEntity.h"

@class MBQuery, MBMetadata, MBRelease, MBCollection, MBISRC, MBRecording;

@protocol MBQueryDelegate <NSObject, NSXMLParserDelegate>
-(void) query:(MBQuery *)query didReceiveResult:(MBMetadata *)result;
-(void) query:(MBQuery *)query didFailWithError:(NSError *)error;
@end

@interface MBQuery : NSObject <NSURLConnectionDataDelegate, NSXMLParserDelegate> 
{
 @private
  id<MBQueryDelegate> _delegate;
  NSString *_useragent;
  NSString *_server;
  NSInteger _port;
  
  NSURLCredential *_credentials;
  
  NSMutableData *_data;
  
  NSError *_error;
  
  NSMutableDictionary *_submissionQueue;
}

#pragma mark - Initializers
/// MBQuery must be initialized with a user agent string. If the string is empty
/// nil is returned. delegate must also not be nil. Default Server:Port is 
/// musicbrainz.org:80
-(id) initWithUserAgent:(NSString *)ua
               Delegate:(id<MBQueryDelegate>)delegate;
/// @see initWithUserAgent:Delegate:
-(id) initWithUserAgent:(NSString *)ua
               Delegate:(id<MBQueryDelegate>)delegate
                 Server:(NSString *)server
                   Port:(NSInteger)port;

#pragma mark - Properties
@property (copy, nonatomic) NSString *UserAgent;
@property (copy, nonatomic) NSString *Server;
@property (assign, nonatomic) NSInteger Port;
@property (copy, nonatomic) NSString *Version;
-(void) setUsername:(NSString *)username
        Password:(NSString *)password;

#pragma mark - Instance Methods
- (void) queueUserTags:(NSArray *)userTags
           forTaggable:(id<MBRateAndTaggableEntity>)taggable;

- (void) queueRating:(MBUserRating *)rating
          forRatable:(id<MBRateAndTaggableEntity>)ratable;

- (void) addRelease:(MBRelease *)release 
       toCollection:(MBCollection *)collection;

- (void) removeRelease:(MBRelease *)release
        fromCollection:(MBCollection *)collection;

- (void) addReleases:(NSArray *)releases
        toCollection:(MBCollection *)collection;

- (void) removeReleases:(NSArray *)releases
         fromCollection:(MBCollection *)collection;

- (void) queueBarcode:(NSString *)barcode
          forRelease:(MBRelease *)release;

- (void) queueISRC:(MBISRC *)isrc
      forRecording:(MBRecording *)recording;

- (void) submitQueue;

- (void) queryWithEntity:(NSString *)entity 
                     uid:(NSString *)idstr 
                resource:(NSString *)resource 
              parameters:(NSDictionary *)parameters;

@end


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
#import "ASIHTTPRequestDelegate.h"
#import "Entities/MBMetadata.h"
#import "Entities/MBRateAndTaggableEntity.h"
#import "Entities/MBRelease.h"
#import "Entities/MBCollection.h"
#import "Entities/MBISRC.h"
#import "Entities/MBRecording.h"

@class MBQuery;
@protocol MBQueryDelegate <NSObject, NSXMLParserDelegate>
-(void) query:(MBQuery *)query didReceiveResult:(MBMetadata *)result;
-(void) query:(MBQuery *)query didFailWithError:(NSError *)error;
@end

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

- (void) submitQueue;

- (void) queryWithEntity:(NSString *)entity 
                     uid:(NSString *)idstr 
                resource:(NSString *)resource 
              parameters:(NSDictionary *)parameters;

@end


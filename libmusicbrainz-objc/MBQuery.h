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

@class MBQuery, MBMetadata;

@protocol MBQueryDelegate <NSObject>
@optional

-(void) query:(MBQuery *)query didReceiveResult:(MBMetadata *)result;
-(void) query:(MBQuery *)query didFailWithError:(NSError *)error;

@end

@interface MBQuery : NSObject <NSURLConnectionDelegate> {
 @private
  id<MBQueryDelegate> _delegate;
  NSString *_useragent;
  NSString *_server;
  NSUInteger _port;
  
  NSURLCredential *_credentials;
  NSURLProtectionSpace *_protectionSpace;
  
  NSMutableData *_data;
}

-(id) initWithUserAgent:(NSString *)ua
               Delegate:(id<MBQueryDelegate>)delegate;
-(id) initWithUserAgent:(NSString *)ua
               Delegate:(id<MBQueryDelegate>)delegate
                 Server:(NSString *)server
                   Port:(NSUInteger)port;

@property (copy, nonatomic) NSString *UserAgent;
@property (copy, nonatomic) NSString *Server;
@property (nonatomic, assign) NSUInteger Port;
-(void) setUsername:(NSString *)username
        andPassword:(NSString*)password;

@end


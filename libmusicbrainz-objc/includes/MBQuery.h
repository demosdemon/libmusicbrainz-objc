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

@protocol MBQueryDelegate <NSObject>

@end

@interface MBQuery : NSObject {
 @private
  id<MBQueryDelegate> _delegate;
  NSString *_useragent;
  NSString *_server;
  NSUInteger _port;
  NSString *_username;
  NSString *_password;
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
-(void) setUsername:(NSString *)username;
-(void) setPassword:(NSString *)password;

@end


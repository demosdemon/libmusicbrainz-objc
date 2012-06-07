///
/// @file MBQuery.m
/// @date Jun 06 2012
/// @copyright
///   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
///   This program is made avaliable under the terms of the MIT License.
///
/// @brief Query object for handling communications with MusicBrainz
///   webservice.

#import "MB.h"

/// http://tickets.musicbrainz.org/browse/MBS-2411
/// http://tickets.musicbrainz.org/browse/MBH-173
#define AUTHENTICATION_PROTOCOL @"http"
#define AUTHENTICATION_REALM    @"musicbrainz.org"

@implementation MBQuery

-(id) init {
  // Must use other initializers.
  self = nil;
  return self;
}

-(id) initWithUserAgent:(NSString *)ua
               Delegate:(id<MBQueryDelegate>)delegate {
  if (ua == nil) return [self init];
  self = [super init];
  if (self) {
    _useragent = [ua copy];
    _delegate = delegate;
  }
  return self;
}

-(id) initWithUserAgent:(NSString *)ua
               Delegate:(id<MBQueryDelegate>)delegate
                 Server:(NSString *)server
                   Port:(NSUInteger)port {
  self = [self initWithUserAgent:ua Delegate:delegate];
  if (self) {
    _server = server;
    _port = port;
  }
  return self;
}

@synthesize UserAgent = _useragent;
@synthesize Server = _server;
@synthesize Port = _port;

-(void) setUsername:(NSString *)username
        andPassword:(NSString*)password {
  _credentials = [NSURLCredential 
                  credentialWithUser:username
                            password:password
                         persistence:NSURLCredentialPersistenceForSession];
  _protectionSpace = [[NSURLProtectionSpace alloc]
                      initWithHost:_server 
                              port:(NSInteger)_port 
                          protocol:AUTHENTICATION_PROTOCOL
                             realm:AUTHENTICATION_REALM
              authenticationMethod:NSURLAuthenticationMethodHTTPDigest];
}

#pragma mark - NSURLConnectionDataDelegate methods

-(void) connection:(NSURLConnection *)connection 
  didFailWithError:(NSError *)error {
  _data = nil;
  if ([_delegate respondsToSelector:@selector(query:didFailWithError:)])
    [_delegate query:self didFailWithError:error];
}

-(void) connection:(NSURLConnection *)connection 
didReceiveResponse:(NSURLResponse *)response {
  [_data setLength:0];
}

-(void) connection:(NSURLConnection *)connection 
    didReceiveData:(NSData *)data {
  [_data appendData:data];
}

-(BOOL) connectionShouldUseCredentialStorage:(NSURLConnection *)connection {
  return YES;
}

-(NSInputStream *) connection:(NSURLConnection *)connection 
            needNewBodyStream:(NSURLRequest *)request {
  
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
  NSError *error = nil;
  MBMetadata * res = [[MBMetadata alloc] initWithXmlData:_data
                                                   Error:&error];
  if (error)
    [self connection:connection didFailWithError:error];
  else if ([_delegate respondsToSelector:@selector(query:didReceiveResult:)])
    [_delegate query:self didReceiveResult:res];
  
  _data = nil;
}

#pragma mark end

@end


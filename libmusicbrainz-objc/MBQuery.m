//
// @file MBQuery.m
// @date Jun 06 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made avaliable under the terms of the MIT License.
//
// @brief Query object for handling communications with MusicBrainz
//   webservice.

#if ! __has_feature(objc_arc)
# warning This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif

#import "MB.h"
#import "ASIHTTPRequest.h"
#import "MBGeneratedDefines.h"

#define LIBRARY_USER_AGENT     @"libmusicbrainz-objc-" MB_VERSION
#define DEFAULT_SERVER         @"musicbrainz.org"
#define DEFAULT_PORT           80
#define MAX_REQUESTS           2
#define AUTHENTICATION_SERVICE @"http"
#define AUTHENTICATION_REALM   @"musicbrainz.org"

#define kTagQueueKey     @"tag"
#define kRatingQueueKey  @"rating"
#define kBarcodeQueueKey @"barcode"
#define kISRCQueueKey    @"isrc"

#define kMaxUriLength               16384
#define kModifyCollectionFormat     @"collection/%@/releases/%@"
#define kCollectionReleaseSeparator @";"

#define kClientParameter @"client"

#define kBaseUrl(server, port) [NSString stringWithFormat:@"http://%@:%d/ws/2/", server, port] 
#define kLength(string)        [string lengthOfBytesUsingEncoding:NSUTF8StringEncoding]

NSDictionary * ASIHTTPRequestToNSDictionary(ASIHTTPRequest * request)
{
  return @{
    @"url": request.url,
    @"requestMethod": request.requestMethod,
    @"ASIHTTPRequest": request
  };
}

@implementation MBQuery

+ (void) initialize {
  [ASIHTTPRequest setDefaultUserAgentString:LIBRARY_USER_AGENT];
}

#pragma mark - Initializers
- (id) init 
{
  // Must use other initializers.
  self = nil;
  return self;
}

- (id) initWithUserAgent:(NSString *)ua
{
  return [self initWithUserAgent:ua
                          Server:DEFAULT_SERVER 
                            Port:DEFAULT_PORT 
          ];
}

- (id) initWithUserAgent:(NSString *)ua
                  Server:(NSString *)server
                    Port:(int)port
{
  if ([ua empty]) return (self = nil);
  if ([server empty]) return (self = nil);
  if (port < 0 || port > 65535) return (self = nil);
  
  if (self = [super init]) {
    _UserAgent = [ua copy];
    _Server = [server copy];
    _Port = port;
  }
  return self;
}

#pragma mark - Properties
@synthesize UserAgent = _UserAgent;
@synthesize Server = _Server;
@synthesize Port = _Port;

@synthesize SuccessHandler = _SuccessHandler;
@synthesize ErrorHandler = _ErrorHandler;

- (void) setUsername:(NSString *)username
            Password:(NSString*)password 
{
  _Credentials = [NSURLCredential credentialWithUser:username
                                            password:password
                                         persistence:NSURLCredentialPersistenceForSession
                  ];
  [ASIHTTPRequest saveCredentials:_Credentials
                          forHost:_Server
                             port:_Port
                         protocol:AUTHENTICATION_SERVICE
                            realm:AUTHENTICATION_REALM
   ];
}

#pragma mark - Instance Methods
- (void) submitGetRequest:(MBGetRequest*)request
{
  [request setParameter:_UserAgent forKey:@"client"];
  [self sendGet:[request url]];
}

- (void) submitPostRequest:(MBPostRequest*)request
{
  [request setParameter:_UserAgent forKey:@"client"];
  [self sendPost:[request url] withData:[request postdata]];
}

- (void) submitPutRequest:(MBPutRequest*)request
{
  [request setParameter:_UserAgent forKey:@"client"];
  [self sendPut:[request url] withData:nil];
}

- (void) submitDeleteRequest:(MBDeleteRequest*)request
{
  [request setParameter:_UserAgent forKey:@"client"];
  [self sendDelete:[request url]];
}

#pragma mark - ASIHTTPRequestDelegate Methods
- (void)requestFinished:(ASIHTTPRequest *)request
{
  NSError *error = nil;
  if ([[request requestMethod] isEqualToString:@"GET"]) {
    NSXMLDocument *doc = [[NSXMLDocument alloc] initWithData:[request responseData] options:NSXMLDocumentXMLKind error:&error];
    if (error)
      [self didFailWithError:error request:request];
    else {
      id result = [MBEntity entityWithElement:[doc rootElement]];
      if (result && [result isKindOfClass:[NSError class]])
        [self didFailWithError:result request:request];
      else if (result && [result isKindOfClass:[MBMetadata class]])
        [self didFinishWithMetadata:result request:request];
      else
        [self didFailWithError:[MBError errorWithString:[request responseString]] request:request];
    }
  }
}

- (void)requestFailed:(ASIHTTPRequest *)request
{
  [self didFailWithError:[request error] request:request];
}


#pragma mark - Private methods

- (void) sendGet:(NSString *)endpoint
{
  NSURL * url = [NSURL URLWithString:endpoint relativeToURL:kBaseUrl(_Server, _Port)];
  ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:url];
  [request setDelegate:self];
  [request setRequestMethod:@"GET"];
  [[ASIHTTPRequest sharedQueue] addOperation:request];
}

- (void) sendPost:(NSString *)endpoint
         withData:(NSData *)data
{
  NSURL * url = [NSURL URLWithString:endpoint relativeToURL:kBaseUrl(_Server, _Port)];
  ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:url];
  [request setDelegate:self];
  [request setRequestMethod:@"POST"];
  if (data) {
    [request addRequestHeader:@"Content-Type" value:@"application/xml; charset=utf-8"];
    [request appendPostData:data];
  }
  [[ASIHTTPRequest sharedQueue] addOperation:request];
}

- (void) sendPut:(NSString *)endpoint
        withData:(NSData *)data
{
  NSURL * url = [NSURL URLWithString:endpoint relativeToURL:kBaseUrl(_Server, _Port)];
  ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:url];
  [request setDelegate:self];
  [request setRequestMethod:@"PUT"];
  if (data)
    [request appendPostData:data];
  [[ASIHTTPRequest sharedQueue] addOperation:request];
}

- (void) sendDelete:(NSString *)endpoint
{
  NSURL * url = [NSURL URLWithString:endpoint relativeToURL:kBaseUrl(_Server, _Port)];
  ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:url];
  [request setDelegate:self];
  [request setRequestMethod:@"DELETE"];
  [[ASIHTTPRequest sharedQueue] addOperation:request];
}

- (void) didFailWithError:(NSError*)error request:(ASIHTTPRequest*)request
{
  if (_ErrorHandler)
    _ErrorHandler(self, ASIHTTPRequestToNSDictionary(request), error);
}

- (void) didFinishWithMetadata:(MBMetadata*)metadata request:(ASIHTTPRequest*)request
{
  if (_SuccessHandler)
    _SuccessHandler(self, ASIHTTPRequestToNSDictionary(request), metadata);
}

@end

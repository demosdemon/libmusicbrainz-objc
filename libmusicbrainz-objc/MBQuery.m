///
/// @file MBQuery.m
/// @date Jun 06 2012
/// @copyright
///   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
///   This program is made avaliable under the terms of the MIT License.
///
/// @brief Query object for handling communications with MusicBrainz
///   webservice.

#if ! __has_feature(objc_arc)
# warning This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif

#import "MB.h"
#import "ASIHTTPRequest.h"

#define LIBRARY_USER_AGENT @"libmusicbrainz-objc-0.0.1"
#define DEFAULT_SERVER @"musicbrainz.org"
#define DEFAULT_PORT   80
#define MAX_REQUESTS   2
#define AUTHENTICATION_SERVICE @"http"
#define AUTHENTICATION_REALM @"musicbrainz.org"

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
                Delegate:(id<MBQueryDelegate>)delegate 
{
  return [self initWithUserAgent:ua 
                        Delegate:delegate 
                          Server:DEFAULT_SERVER 
                            Port:DEFAULT_PORT 
          ];
}

- (id) initWithUserAgent:(NSString *)ua
                Delegate:(id<MBQueryDelegate>)delegate
                  Server:(NSString *)server
                    Port:(NSInteger)port 
{
  if (!ua || [ua isEqualToString:@""] || !delegate) return (self = nil);
  NSAssert(server && ![server isEqualToString:@""], @"server is empty or nil");
  
  if (self = [super init]) {
    _useragent = ua;
    _delegate = delegate;
    _server = [server copy];
    _port = port;
  }
  return self;
}

#pragma mark - Properties
@synthesize UserAgent = _useragent;
@synthesize Server = _server;
@synthesize Port = _port;
@synthesize Version = _version;
- (void) setUsername:(NSString *)username
            Password:(NSString*)password 
{
  _credentials = [NSURLCredential credentialWithUser:username
                                            password:password
                                         persistence:NSURLCredentialPersistenceForSession
                  ];
  [ASIHTTPRequest saveCredentials:_credentials
                          forHost:_server
                             port:_port
                         protocol:AUTHENTICATION_SERVICE
                            realm:AUTHENTICATION_REALM
   ];
}

#pragma mark - Instance Methods
- (void) submitQueue
{
  
}

- (void) queryWithEntity:(NSString *)entity 
                     uid:(NSString *)idstr 
                resource:(NSString *)resource 
              parameters:(NSDictionary *)parameters
{
  if (!entity || [entity length] == 0) return;
  NSMutableString * endpoint = [[NSMutableString alloc] initWithString:entity];
  if (idstr) [endpoint appendFormat:@"/%@", idstr];
  if (resource) [endpoint appendFormat:@"/%@", resource];
  
  
}

#pragma mark ASIHTTPRequestDelegate Methods
- (void)requestFinished:(ASIHTTPRequest *)request
{
  NSError *error = nil;
  if ([[request requestMethod] isEqualToString:@"GET"]) {
    NSXMLDocument *doc = [[NSXMLDocument alloc] initWithData:[request responseData] options:DDXMLDocumentXMLKind error:&error];
    if (error)
      [self didFailWithError:error];
    else
      if ([[[doc rootElement] name] isEqualToString:@"error"]) {
        //[self didFailWithError:[[MBError alloc] initWithDoc:doc]];
      }
      else if ([[[doc rootElement] name] isEqualToString:@"metadata"]) {
        //MBMetadata *metadata = [[MBMetadata alloc] initWithDoc:doc]];
      } else {
        //[self didFailWithError:[MBError errorWithData:[request responseData]]];
      }
  }
}

- (void)requestFailed:(ASIHTTPRequest *)request
{
  [self didFailWithError:[request error]];
}

#pragma mark - Private methods
+ (NSString *) urlEscape:(NSString *)unencodedString
{
	return CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)unencodedString, NULL, (CFStringRef)@"!*'\"();:@&=+$,/?%#[]% ", kCFStringEncodingUTF8));
}

// Put a query string onto the end of a url
+ (NSString *) addQueryStringToUrl:(NSString *)url
                            params:(NSDictionary *)params
{
	NSMutableString *urlWithQuerystring = [[NSMutableString alloc] initWithString:url];
	// Convert the params into a query string
	if (params) {
		for(id key in params) {
			NSString *sKey = [key description];
      NSString * sVal = [[params objectForKey:key] description];
			// Do we need to add ?k=v or &k=v ?
			if ([urlWithQuerystring rangeOfString:@"?"].location==NSNotFound) {
				[urlWithQuerystring appendFormat:@"?%@=%@", [MBQuery urlEscape:sKey], [MBQuery urlEscape:sVal]];
			} else {
				[urlWithQuerystring appendFormat:@"&%@=%@", [MBQuery urlEscape:sKey], [MBQuery urlEscape:sVal]];
			}
		}
	}
	return urlWithQuerystring;
}

- (NSURL *) urlWithEndpoint:(NSString *)endpoint
                 parameters:(NSDictionary *)params
{
  NSMutableDictionary *parameters = [NSMutableDictionary dictionaryWithObject:_useragent forKey:@"client"];
  [parameters setValuesForKeysWithDictionary:params];
  
  id inc = [params objectForKey:@"inc"];
  if (inc && [inc isKindOfClass:[NSArray class]])
    [params setValue:[inc componentsJoinedByString:@"+"] forKey:@"inc"];
  
  return [NSURL URLWithString:[MBQuery addQueryStringToUrl:endpoint params:parameters] relativeToURL:kBaseUrl(_server, _port)];
}

- (void) get:(NSString *)endpoint
  parameters:(NSDictionary *)parameters
{
  ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:[self urlWithEndpoint:endpoint parameters:parameters]];
  [request setDelegate:self];
  [request setRequestMethod:@"GET"];
  [[ASIHTTPRequest sharedQueue] addOperation:request];
}

- (void) post:(NSString *)endpoint
   parameters:(NSDictionary *)parameters
         data:(NSData *)data
{
  ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:[self urlWithEndpoint:endpoint parameters:parameters]];
  [request setDelegate:self];
  [request setRequestMethod:@"POST"];
  [request addRequestHeader:@"Content-Type" value:@"application/xml; charset=utf-8"];
  [request appendPostData:data];
  [[ASIHTTPRequest sharedQueue] addOperation:request];
}

- (void) put:(NSString *)endpoint
  parameters:(NSDictionary *)parameters
        data:(NSData *)data
{
  ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:[self urlWithEndpoint:endpoint parameters:parameters]];
  [request setDelegate:self];
  [request setRequestMethod:@"PUT"];
  if (data)
    [request appendPostData:data];
  [[ASIHTTPRequest sharedQueue] addOperation:request];
}

- (void) delete:(NSString *)endpoint
     parameters:(NSDictionary *)parameters
{
  ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:[self urlWithEndpoint:endpoint parameters:parameters]];
  [request setDelegate:self];
  [request setRequestMethod:@"DELETE"];
  [[ASIHTTPRequest sharedQueue] addOperation:request];
}

- (void) didFailWithError:(NSError*)error
{
  if (_delegate && [_delegate respondsToSelector:@selector(query:didReceiveResult:)])
    [_delegate query:self didFailWithError:error];
}

- (void) didFinishWithMetadata:(MBMetadata*)metadata
{
  if (_delegate && [_delegate respondsToSelector:@selector(query:didReceiveResult:)])
    [_delegate query:self didReceiveResult:metadata];
}

@end


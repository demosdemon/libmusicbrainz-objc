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
#import "NSMutableArray_QuackMethods.h"

#define DEFAULT_SERVER @"musicbrainz.org"
#define DEFAULT_PORT   80

#define kTagQueueKey     @"tag"
#define kRatingQueueKey  @"rating"
#define kBarcodeQueueKey @"barcode"
#define kISRCQueueKey    @"isrc"

#define kMaxUriLength               16384
#define kModifyCollectionFormat     @"collection/%@/releases/%@"
#define kCollectionReleaseSeparator @";"

#define kClientParameter @"client"

#define kBaseUrl(server, port) [NSString stringWithFormat:@"http://%@:%@/ws/2/", server, port] 
#define kLength(string)        [string lengthOfBytesUsingEncoding:NSUTF8StringEncoding]

#define kUserTagFormat     @"<user-tag><name>%@</name></user-tag>"
#define kUserTagListFormat @"<%@ id=\"%@\"><user-tag-list>%@</user-tag-list></%@>"
#define kUserRatingFormat  @"<%@ id=\"%@\"><user-rating>%@</user-rating></%@>"
#define kBarcodeFormat     @"<release id=\"%@\"><barcode>%@</barcode></release>"
#define kISRCFormat        @"<isrc id=\"%@\" />"
#define kRecordingFormat   @"<recording id=\"%@\"><isrc-list count=\"%@\">%@</isrc-list></recoring>"
#define kEntityListFormat  @"<%@-list>%@</%@-list>"
#define kMetadataFormat    @"<metadata xmlns=\"http://musicbrainz.org/ns/mmd-2.0#\">%@</metadata>"


@implementation MBQuery

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
    _useragent = [ua copy];
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
}

#pragma mark - Instance Methods
- (void) queueUserTags:(NSArray *)userTags
           forTaggable:(id<MBRateAndTaggableEntity>)taggable
{
  if (!userTags || [userTags count] == 0 || !taggable) return;
  NSAssert([taggable respondsToSelector:@selector(Id)], 
           @"taggable must have Id property");
  
  if (!_submissionQueue) _submissionQueue = [[NSMutableDictionary alloc] init];
  
  NSMutableDictionary * tagQueue = [_submissionQueue objectForKey:kTagQueueKey];
  if (!tagQueue) tagQueue = [[NSMutableDictionary alloc] init];
  
  NSMutableDictionary * queue = [tagQueue objectForKey:[taggable ElementName]];
  if (!queue) queue = [[NSMutableDictionary alloc] init];
  
  NSArray * tags = [queue objectForKey:[taggable Id]];
  if (!tags) tags = [[NSArray alloc] init];
  
  tags = [tags arrayByAddingObjectsFromArray:userTags];
  [queue setObject:tags forKey:[taggable Id]];
  [tagQueue setObject:queue forKey:[taggable ElementName]];
  [_submissionQueue setObject:tagQueue forKey:kTagQueueKey];
}

- (void) queueRating:(MBUserRating *)rating
          forRatable:(id<MBRateAndTaggableEntity>)ratable
{
  if (!rating || !ratable) return;
  NSAssert([ratable respondsToSelector:@selector(Id)],
           @"ratable must have Id property");
  
  if (!_submissionQueue) _submissionQueue = [[NSMutableDictionary alloc] init];
  
  NSMutableDictionary * ratingQueue = [_submissionQueue objectForKey:kRatingQueueKey];
  if (!ratingQueue) ratingQueue = [[NSMutableDictionary alloc] init];
  
  NSMutableDictionary * queue = [ratingQueue objectForKey:[ratable ElementName]];
  if (!queue) queue = [[NSMutableDictionary alloc] init];
  
  [queue setObject:rating forKey:[ratable Id]];
  [ratingQueue setObject:queue forKey:[ratable ElementName]];
  [_submissionQueue setObject:ratingQueue forKey:kRatingQueueKey];
}

- (void) addRelease:(MBRelease *)release 
       toCollection:(MBCollection *)collection
{
  if (!release || !collection) return;
  NSString *endpoint = [NSString stringWithFormat:kModifyCollectionFormat,
                        [collection Id], [release Id]];
  [self put:endpoint parameters:[NSDictionary dictionary]];
}

- (void) removeRelease:(MBRelease *)release
        fromCollection:(MBCollection *)collection
{
  if (!release || !collection) return;
  NSString *endpoint = [NSString stringWithFormat:kModifyCollectionFormat,
                        [collection Id], [release Id]];
  [self delete:endpoint parameters:[NSDictionary dictionary]];
}

- (void) addReleases:(NSArray *)releases
        toCollection:(MBCollection *)collection
{
  if (!releases || [releases count] == 0 || !collection) return;
  if ([releases count] == 1) return [self addRelease:[releases objectAtIndex:0] 
                                        toCollection:collection];
  
  const NSUInteger baseUrlLength = (kLength(kBaseUrl(_server, _port)) 
                                    + kLength(_useragent) 
                                    + kLength(kClientParameter) + 2);
  
  NSMutableArray  * queue = [NSMutableArray arrayWithArray:releases];
  NSMutableString * endpoint = 
  [[NSMutableString alloc] initWithFormat:kModifyCollectionFormat, [collection Id], @""];
  
  while ([queue count] > 0) { 
    NSString * next = [queue dequeue];
    
    if ((kLength(endpoint) + baseUrlLength + kLength(next) + 1) > kMaxUriLength) {
      [self put:[NSString stringWithString:endpoint] 
     parameters:[NSDictionary dictionary]];
      
      endpoint = [[NSMutableString alloc] initWithFormat:kModifyCollectionFormat, [collection Id], @""];
    }
    
    [endpoint appendFormat:@"%@%@", next, kCollectionReleaseSeparator];
  }  
  
  [self put:[NSString stringWithString:endpoint] 
 parameters:[NSDictionary dictionary]];
}

- (void) removeReleases:(NSArray *)releases
         fromCollection:(MBCollection *)collection
{
  if (!releases || [releases count] == 0 || !collection) return;
  if ([releases count] == 1) return [self removeRelease:[releases objectAtIndex:0] 
                                         fromCollection:collection];
  
  const NSUInteger baseUrlLength = (kLength(kBaseUrl(_server, _port)) 
                                    + kLength(_useragent) 
                                    + kLength(kClientParameter) + 2);
  
  NSMutableArray  * queue = [NSMutableArray arrayWithArray:releases];
  NSMutableString * endpoint = 
  [[NSMutableString alloc] initWithFormat:kModifyCollectionFormat, [collection Id], @""];
  
  while ([queue count] > 0) { 
    NSString * next = [queue dequeue];
    
    if ((kLength(endpoint) + baseUrlLength + kLength(next) + 1) > kMaxUriLength) {
      [self delete:[NSString stringWithString:endpoint] 
        parameters:[NSDictionary dictionary]];
      
      endpoint = [[NSMutableString alloc] initWithFormat:kModifyCollectionFormat, [collection Id], @""];
    }
    
    [endpoint appendFormat:@"%@%@", next, kCollectionReleaseSeparator];
  }  
  
  [self delete:[NSString stringWithString:endpoint] 
    parameters:[NSDictionary dictionary]];
}

- (void) queueBarcode:(NSString *)barcode
           forRelease:(MBRelease *)release
{
  if (!barcode || [barcode isEqualToString:@""] || !release) return; 
  
  if (!_submissionQueue) _submissionQueue = [[NSMutableDictionary alloc] init];
  
  NSMutableDictionary *barcodeQueue = [_submissionQueue objectForKey:kBarcodeQueueKey];
  if (!barcodeQueue) barcodeQueue = [[NSMutableDictionary alloc] init];
  
  [barcodeQueue setObject:barcode forKey:[release Id]];
  [_submissionQueue setObject:barcodeQueue forKey:kBarcodeQueueKey];
}

- (void) queueISRC:(NSString *)isrc
      forRecording:(MBRecording *)recording
{
  if (!isrc || [isrc isEqualToString:@""] || !recording) return;
  
  if (!_submissionQueue) _submissionQueue = [[NSMutableDictionary alloc] init];
  
  NSMutableDictionary *isrcQueue = [_submissionQueue objectForKey:kISRCQueueKey];
  if (!isrcQueue) isrcQueue = [[NSMutableDictionary alloc] init];
  
  NSMutableArray *recordingIsrcQueue = [isrcQueue objectForKey:[recording Id]];
  if (!recordingIsrcQueue) recordingIsrcQueue = [[NSMutableArray alloc] init];
  
  [recordingIsrcQueue addObject:isrc];
  [isrcQueue setObject:recordingIsrcQueue forKey:[recording Id]];
  [_submissionQueue setObject:isrcQueue forKey:kISRCQueueKey];
}

- (void) submitQueue
{
  NSDictionary *currentQueue = nil;
  
  currentQueue = [_submissionQueue objectForKey:kTagQueueKey];
  if (currentQueue) {
    NSMutableString * xmlString = [[NSMutableString alloc] init];
    
    [currentQueue enumerateKeysAndObjectsUsingBlock:^(NSString * key, NSDictionary * entities, BOOL *stop) {
      NSMutableString *listString = [[NSMutableString alloc] init];
      
      [entities enumerateKeysAndObjectsUsingBlock:^(id uid, id obj, BOOL *stop) {
        NSMutableString *tagList = [[NSMutableString alloc] init];
        
        for (MBUserTag * tag in obj)
          [tagList appendFormat:kUserTagFormat, [tag Name]];
        
        [listString appendFormat:kUserTagListFormat, key, uid, tagList, key];
      }];
      
      [xmlString appendFormat:kEntityListFormat, key, listString, key];
    }];
    
    xmlString = [NSMutableString stringWithFormat:kMetadataFormat, xmlString];
    
    [self post:@"tag"
    parameters:[NSDictionary dictionary] 
          data:[xmlString dataUsingEncoding:NSUTF8StringEncoding]];
  }
  [_submissionQueue removeObjectForKey:kTagQueueKey];
  
  currentQueue = [_submissionQueue objectForKey:kRatingQueueKey];
  if (currentQueue) {
    NSMutableString * xmlString = [[NSMutableString alloc] init];
    
    [currentQueue enumerateKeysAndObjectsUsingBlock:^(NSString * key, NSDictionary * entities, BOOL *stop) {
      NSMutableString *listString = [[NSMutableString alloc] init];
      
      [entities enumerateKeysAndObjectsUsingBlock:^(NSString * uid, MBUserRating * rating, BOOL *stop) {
        [listString appendFormat:kUserRatingFormat, key, uid, [rating Value], key];
      }];
      
      [xmlString appendFormat:kEntityListFormat, key, listString, key];
    }];
    
    xmlString = [NSMutableString stringWithFormat:kMetadataFormat, xmlString];
    
    [self post:@"rating" 
    parameters:[NSDictionary dictionary] 
          data:[xmlString dataUsingEncoding:NSUTF8StringEncoding]];
  }
  [_submissionQueue removeObjectForKey:kTagQueueKey];
  
  currentQueue = [_submissionQueue objectForKey:kBarcodeQueueKey];
  if (currentQueue) {
    NSMutableString * xmlString = [[NSMutableString alloc] init];
    
    [currentQueue enumerateKeysAndObjectsUsingBlock:^(NSString * uid, NSString * barcode, BOOL *stop) {
      [xmlString appendFormat:kBarcodeFormat, uid, barcode];
    }];
    
    xmlString = [NSMutableString stringWithFormat:kMetadataFormat, xmlString];
    
    [self post:@"release"
    parameters:[NSDictionary dictionary] 
          data:[xmlString dataUsingEncoding:NSUTF8StringEncoding]];
  }
  [_submissionQueue removeObjectForKey:kBarcodeQueueKey];
  
  currentQueue = [_submissionQueue objectForKey:kISRCQueueKey];
  if (currentQueue) {
    NSMutableString * xmlString = [[NSMutableString alloc] init];
    
    [currentQueue enumerateKeysAndObjectsUsingBlock:^(NSString * uid, NSArray * isrcList, BOOL *stop) {
      NSMutableString * listString = [[NSMutableString alloc] init];
      for (NSString * isrc in isrcList)
        [listString appendFormat:kISRCFormat, isrc];
      
      [xmlString appendFormat:kRecordingFormat, uid, [NSNumber numberWithUnsignedInt:[isrcList count]], listString];
    }];
    
    xmlString = [NSMutableString stringWithFormat:kMetadataFormat, 
                 [NSString stringWithFormat:kEntityListFormat, 
                  @"recording", xmlString]];
    
    [self post:@"recording" 
    parameters:[NSDictionary dictionary] 
          data:[xmlString dataUsingEncoding:NSUTF8StringEncoding]];
  }
  [_submissionQueue removeObjectForKey:kISRCQueueKey];
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

#pragma mark - NSURLConnectionDelegate methods
- (void) connection:(NSURLConnection *)connection 
   didFailWithError:(NSError *)error 
{
  _data = nil;
  if ([_delegate respondsToSelector:@selector(query:didFailWithError:)])
    [_delegate query:self didFailWithError:error];
}

- (BOOL) connectionShouldUseCredentialStorage:(NSURLConnection *)connection 
{
  return YES;
}

- (void) connection:(NSURLConnection *)connection 
willSendRequestForAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge 
{
  if (![[challenge proposedCredential] isEqual:_credentials])
    [[challenge sender] useCredential:_credentials 
           forAuthenticationChallenge:challenge
     ];
}

#pragma mark - NSURLConnectionDataDelegate methods
- (void) connection:(NSURLConnection *)connection 
 didReceiveResponse:(NSURLResponse *)response 
{
  [_data setLength:0];
}

- (void) connection:(NSURLConnection *)connection 
     didReceiveData:(NSData *)data 
{
  [_data appendData:data];
}

- (NSInputStream *) connection:(NSURLConnection *)connection 
             needNewBodyStream:(NSURLRequest *)request
{
  
}

- (void) connection:(NSURLConnection *)connection
    didSendBodyData:(NSInteger)bytesWritten
  totalBytesWritten:(NSInteger)totalBytesWritten
totalBytesExpectedToWrite:(NSInteger)totalBytesExpectedToWrite
{
  
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection 
{
}

#pragma mark - NSXMLParserDelegate methods

- (void) parserDidStartDocument:(NSXMLParser *)parser 
{
  
}

- (void) parserDidEndDocument:(NSXMLParser *)parser 
{
  
}

- (void) parser:(NSXMLParser *)parser 
didStartElement:(NSString *)elementName 
   namespaceURI:(NSString *)namespaceURI 
  qualifiedName:(NSString *)qName 
     attributes:(NSDictionary *)attributeDict 
{
  
}

- (void) parser:(NSXMLParser *)parser 
  didEndElement:(NSString *)elementName 
   namespaceURI:(NSString *)namespaceURI 
  qualifiedName:(NSString *)qName
{
  
}

#pragma mark - Private methods
- (void) get:(NSString *)endpoint
  parameters:(NSDictionary *)parameters
{

}

- (void) post:(NSString *)endpoint
   parameters:(NSDictionary *)parameters
         data:(NSData *)data
{
  
}

- (void) put:(NSString *)endpoint
  parameters:(NSDictionary *)parameters
{
  
}

- (void) delete:(NSString *)endpoint 
     parameters:(NSDictionary *)parameters
{
}

@end


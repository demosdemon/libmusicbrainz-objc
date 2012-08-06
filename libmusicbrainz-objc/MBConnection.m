//
//  MBConnection.m
//  libmusicbrainz-objc
//
//  Created by Joachim LeBlanc on 8/5/12.
//  Copyright (c) 2012.
//  This program is made available under the terms of the MIT License.
//

#import "MBConnection.h"
#import "Entities/MBEntity.h"
#import "Entities/MBMetadata.h"
#import "Requests/MBRequest.h"
#import "Requests/MBPostRequest.h"
#import "NSString+MBKeyManipulation.h"
#import "MBGeneratedDefines.h"

#import "MKNetworkEngine.h"
#import "SSKeychain.h"

#define kHostname(SERVER, PORT) [NSString stringWithFormat:@"%@:%@", (SERVER), (PORT)]
#define kLibraryUserAgent @"libmusicbrainz-objc-" MB_VERSION
#define kDefaultClient @"libmusicbrainz-objc-test"
#define kDefaultServer @"musicbrainz.org"
#define kDefaultPort @80

@implementation MBConnection

+ (MBConnection *) connection
{ return [[self alloc] init]; }
+ (MBConnection *) connectionWithClientName:(NSString *)client
{ return [[self alloc] initWithClientName:client]; }
+ (MBConnection *) connectionWithClientName:(NSString *)client server:(NSString *)server port:(NSNumber *)port
{ return [[self alloc] initWithClientName:client server:server port:port]; }

- (MBConnection *) init
{ return [self initWithClientName:kDefaultClient server:kDefaultServer port:kDefaultPort]; }
- (MBConnection *) initWithClientName:(NSString *)client
{ return [self initWithClientName:client server:kDefaultServer port:kDefaultPort]; }
- (MBConnection *) initWithClientName:(NSString *)client server:(NSString *)server port:(NSNumber *)port
{
  self = [super init];
  if (!self) return nil;

  _ClientName = [client copy];
  _Server = [server copy];
  _Port = [port copy];

  _networkEngine = [[MKNetworkEngine alloc] initWithHostName:self.Server
                                                     apiPath:@"ws/2"
                                          customHeaderFields:@{ @"User-Agent" : kLibraryUserAgent }];
  _networkEngine.portNumber = [self.Port intValue];

  return self;
}

@synthesize ClientName = _ClientName;
@synthesize Server = _Server;
@synthesize Port = _Port;

- (void) setUsername:(NSString *)username
            Password:(NSString *)password
{
  NSArray * accounts = [SSKeychain accountsForService:self.Server];
  if (accounts && accounts.count > 0) {
    [accounts enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
      [SSKeychain deletePasswordForService:self.Server account:obj];
    }];
  }
  [SSKeychain setPassword:password forService:self.Server account:username];
}

- (NSString *) username
{
  NSArray * accounts = [SSKeychain accountsForService:self.Server];
  if (accounts && accounts.count > 0)
    return [accounts objectAtIndex:0];
  else return nil;
}

- (void) enqueueRequest:(MBRequest *)request
              onSuccess:(void(^)(MBRequest * request, MBMetadata * data))successBlock
              onFailure:(void(^)(MBRequest * request, NSError * error, NSData * response))failureBlock
{
  [request setParameter:self.ClientName forKey:@"client"];
  MKNetworkOperation * method = [_networkEngine operationWithPath:[request url]
                                         params:nil
                                     httpMethod:request.RequestMethod];
  if (self.username)
    [method setUsername:self.username
               password:[SSKeychain passwordForService:self.Server
                                               account:self.username]];
  if ([request isKindOfClass:[MBPostRequest class]]) {
    [method addHeaders:@{@"Content-Type": @"application/xml; charset=utf-8"}];
    [method setUploadStream:[[NSInputStream alloc] initWithData:[(MBPostRequest*)request postdata]]];
    method.freezable = YES;
  }

  [method onCompletion:^(MKNetworkOperation *completedOperation) {
    NSError * error;
    NSXMLElement * doc = [[NSXMLElement alloc] initWithXMLString:completedOperation.responseString error:&error];
    if (error) {
      DLogObject(error);
      if (failureBlock) failureBlock(request, error, completedOperation.responseData);
      return;
    }

    id data = [MBEntity entityWithElement:doc];
    if ([data isKindOfClass:[NSError class]]) error = data;
    if (error) {
      DLogObject(error);
      if (failureBlock) failureBlock(request, error, completedOperation.responseData);
      return;
    }
    if (successBlock) successBlock(request, data);
  } onError:^(NSError *error) {
    if (failureBlock) failureBlock(request, error, nil);
  }];

  DLogObject(method);

  [_networkEngine enqueueOperation:method];
}

@end

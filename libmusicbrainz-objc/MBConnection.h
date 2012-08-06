//
//  MBConnection.h
//  libmusicbrainz-objc
//
//  Created by Joachim LeBlanc on 8/5/12.
//  Copyright (c) 2012.
//  This program is made available under the terms of the MIT License.
//

#import <Foundation/Foundation.h>

@class MBRequest, MBMetadata, MKNetworkEngine;

@interface MBConnection : NSObject {
 @private
  NSString * _ClientName;
  NSString * _Server;
  NSNumber * _Port;

  MKNetworkEngine * _networkEngine;
}

+ (MBConnection *) connection;
+ (MBConnection *) connectionWithClientName:(NSString *)client;
+ (MBConnection *) connectionWithClientName:(NSString *)client server:(NSString *)server port:(NSNumber *)port;

- (MBConnection *) init;
- (MBConnection *) initWithClientName:(NSString *)client;
- (MBConnection *) initWithClientName:(NSString *)client server:(NSString *)server port:(NSNumber *)port;

@property (readonly, nonatomic) NSString * ClientName;
@property (readonly, nonatomic) NSString * Server;
@property (readonly, nonatomic) NSNumber * Port;

- (void) setUsername:(NSString *)username
            Password:(NSString *)password;

- (void) enqueueRequest:(MBRequest *)request
              onSuccess:(void(^)(MBRequest * request, MBMetadata * data))successBlock
              onFailure:(void(^)(MBRequest * request, NSError * error, NSData * response))failureBlock;

@end

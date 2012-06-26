//
//  MBQueryDelegate.h
//  libmusicbrainz-objc
//
//  Created by Joachim LeBlanc on 6/26/12.
//
//

#import <Foundation/Foundation.h>

@class MBQuery, MBMetadata;

/// Delegate for MBQuery
@protocol MBQueryDelegate <NSObject, NSXMLParserDelegate>

/// Called when MBQuery recieved a successful payload from the webserver
/// @param query The MBQuery object that recieved the request
/// @param result The result of the request
-(void) query:(MBQuery *)query didReceiveResult:(MBMetadata *)result;
/// Called when MBQuery failed to recieve a result or process the result
/// @param query The MBQuery object that recieved the request
/// @param error The error
-(void) query:(MBQuery *)query didFailWithError:(NSError *)error;

@end

//
//  MBQueryDelegate.h
//  libmusicbrainz-objc
//
//  Created by Joachim LeBlanc on 6/26/12.
//
//

@class MBQuery, MBRequest, MBMetadata;

/// Delegate for MBQuery
@protocol MBQueryDelegate <NSObject, NSXMLParserDelegate>

@required

/// Success Callback
///
/// MBQuery will send a message to the delegate when the request is finished
/// and successful.
///
/// @param query The query object that handled the request
/// @param request The request
/// @param result The result
- (void) query:(MBQuery *)query didCompleteRequest:(MBRequest *)request withResult:(MBMetadata *)result;

/// Error Callback
///
/// MBQuery will send a message to the delegate whenever anything causes the
/// request to fail. If there is any error information, it will be sent as well.
///
/// @param query The query object that handled the request
/// @param request The request
/// @param error The error object (if any)
- (void) query:(MBQuery *)query didCompleteRequest:(MBRequest *)request withError:(NSError *)error;

@end

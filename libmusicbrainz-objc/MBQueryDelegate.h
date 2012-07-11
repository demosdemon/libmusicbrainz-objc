//
// @file MBQueryDelegate.h
// @date Jun 26 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made avaliable under the terms of the MIT License.
//
// @brief 

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

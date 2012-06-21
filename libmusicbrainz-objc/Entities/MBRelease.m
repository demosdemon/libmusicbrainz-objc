/// 
/// @file MBRelease.m
/// @author Jens Lukas
/// @date Jun 7 2010
/// @copyright 
///   2010 Jens Lukas <contact@jenslukas.com> \n
///   This program is made available under the terms of the MIT License.
///
/// @brief Release entity

#if ! __has_feature(objc_arc)
# warning This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif

#import "MB.h"

@implementation MBRelease

- (void) parseElement:(NSXMLElement *)element
{
  // TODO: Implelemt
  [super parseElement:element];
}

+ (NSString *) entityType {
  return @"release";
}

@end

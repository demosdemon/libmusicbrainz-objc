/// 
/// @file MBLabel.m
/// @author Jens Lukas
/// @date Jun 22 2010
/// @copyright 
///   2010 Jens Lukas <contact@jenslukas.com> \n
///   This program is made available under the terms of the MIT License.
///
/// @brief Label entity

#if ! __has_feature(objc_arc)
# warning This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif

#import "MB.h"

@implementation MBLabel

- (void) parseElement:(NSXMLElement *)element
{
  // TODO: Implelemt
  [super parseElement:element];
}

+ (NSString *) entityType {
  return @"label";
}

@end

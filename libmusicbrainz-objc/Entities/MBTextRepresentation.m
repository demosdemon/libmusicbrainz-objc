/// 
/// @file MBTextRepresentation.m
/// @author Joachim LeBlanc
/// @date June 19 2012
/// @copyright 
///   2012 Joachim LeBlanc <demosdemon@gmail.com> \n
///   This program is made available under the terms of the MIT License.
/// 
/// @brief

#if ! __has_feature(objc_arc)
# warning This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif

#import "MBTextRepresentation.h"

@implementation MBTextRepresentation

- (void) parseElement:(NSXMLElement *)element
{
  // TODO: Implelemt
  [super parseElement:element];
}

+ (NSString *) entityType {
  return @"text-representation";
}

@end

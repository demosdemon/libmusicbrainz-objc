///
/// @file MBNonMbTrack.m
/// @date Jun 06 2012
/// @copyright
///   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
///   This program is made avaliable under the terms of the MIT License.
///
/// @brief NonMbTrack Entity

#if ! __has_feature(objc_arc)
# warning This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif

#import "MB.h"

@implementation MBNonMbTrack

- (void) parseElement:(NSXMLElement *)element
{
  // TODO: Implelemt
  [super parseElement:element];
}

+ (NSString *) entityType {
  return @"nonmb-track";
}

@end


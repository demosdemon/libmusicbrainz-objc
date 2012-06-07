///
/// @file MBLifeSpan.m
/// @date Jun 06 2012
/// @copyright
///   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
///   This program is made avaliable under the terms of the MIT License.
///
/// @brief LifeSpan Entity

#import "MB.h"

const NSString *kBeginKey = @"begin";
const NSString *kEndKey   = @"end";
const NSString *kEndedKey = @"ended";
const NSString *kTrue     = @"true";

@implementation MBLifeSpan

-(NSString *) Begin {
  return [_dict objectForKey:kBeginKey];
}

-(NSString *) End {
  return [_dict objectForKey:kEndKey];
}

-(BOOL) Ended {
  NSString *ended = [_dict objectForKey:kEndedKey];
  return (ended && [ended isEqualToString:kTrue]);
}

@end


//
// @file MBRelation.m
// @date Jun 06 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made avaliable under the terms of the MIT License.
//
// @brief Relation Entity

#if ! __has_feature(objc_arc)
# warning This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif

#import "MB.h"

@implementation MBRelation

MB_ATTRIBUTE(Type);
MB_STRING_ELEMENT(Target);
MB_STRING_ELEMENT(Direction);
MB_ELEMENT(AttributeList);

MB_ELEMENT(Artist);
MB_ELEMENT(Release);
MB_ELEMENT(ReleaseGroup);
MB_ELEMENT(Recording);
MB_ELEMENT(Label);
MB_ELEMENT(Work);

@end

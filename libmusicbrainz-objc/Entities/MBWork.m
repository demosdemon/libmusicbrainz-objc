// 
// @file MBWork.m
// @author Brandon LeBlanc
// @date Jun 06 2012
// @copyright 
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made available under the terms of the MIT License.
//
// @brief Work entity

#if ! __has_feature(objc_arc)
# warning This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif

#import "MB.h"

@implementation MBWork

MB_ATTRIBUTE(Id);
MB_ATTRIBUTE(Type);
MB_STRING_ELEMENT(Title);
MB_STRING_ELEMENT(Language);
MB_ELEMENT(ArtistCredit);
MB_ELEMENT(Iswc);
MB_ELEMENT(IswcList);
MB_STRING_ELEMENT(Disambiguation);
MB_ELEMENT(AliasList);
MB_ELEMENT(RelationList);

@end

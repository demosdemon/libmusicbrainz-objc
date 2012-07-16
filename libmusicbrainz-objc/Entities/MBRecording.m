// 
// @file MBRecording.m
// @author Brandon LeBlanc
// @date Jun 06 2012
// @copyright 
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made available under the terms of the MIT License.
//
// @brief Recording entity

#if ! __has_feature(objc_arc)
# warning This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif

#import "MB.h"

@implementation MBRecording

MB_STRING_ELEMENT(Title);
MB_NUMBER_ELEMENT(Length);
MB_STRING_ELEMENT(Disambiguation);
MB_ELEMENT(ArtistCredit);
MB_ELEMENT(ReleaseList);
MB_ELEMENT(PuidList);
MB_ELEMENT(IsrcList);
MB_ELEMENT(RelationList);

@end

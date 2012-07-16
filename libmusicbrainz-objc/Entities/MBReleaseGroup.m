// 
// @file MBReleaseGroup.m
// @author Jens Lukas
// @date Jul 25 2010
// @copyright 
//   2010 Jens Lukas <contact@jenslukas.com> \n
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made available under the terms of the MIT License.
//
// @brief ReleaseGroup entity

#if ! __has_feature(objc_arc)
# warning This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif

#import "MB.h"

@implementation MBReleaseGroup

MB_ATTRIBUTE(Type);
MB_STRING_ELEMENT(Title);
MB_STRING_ELEMENT(Disambiguation);
MB_STRING_ELEMENT(FirstReleaseDate);
MB_STRING_ELEMENT(PrimaryType);
MB_ELEMENT(SecondaryTypeList);
MB_ELEMENT(ArtistCredit);
MB_ELEMENT(ReleaseList);
MB_ELEMENT(RelationList);

@end

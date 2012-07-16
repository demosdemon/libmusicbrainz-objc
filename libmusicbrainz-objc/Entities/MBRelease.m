// 
// @file MBRelease.m
// @author Jens Lukas
// @date Jun 7 2010
// @copyright 
//   2010 Jens Lukas <contact@jenslukas.com> \n
//   This program is made available under the terms of the MIT License.
//
// @brief Release entity

#if ! __has_feature(objc_arc)
# warning This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif

#import "MB.h"

@implementation MBRelease

MB_STRING_ELEMENT(Title);
MB_STRING_ELEMENT(Status);
MB_STRING_ELEMENT(Quality);
MB_STRING_ELEMENT(Disambiguation);
MB_STRING_ELEMENT(Packaging);
MB_ELEMENT(TextRepresentation);
MB_ELEMENT(ArtistCredit);
MB_ELEMENT(ReleaseGroup);
MB_STRING_ELEMENT(Date);
MB_STRING_ELEMENT(Country);
MB_STRING_ELEMENT(Barcode);
MB_STRING_ELEMENT(Asin);
MB_ELEMENT(LabelInfoList);
MB_ELEMENT(MediumList);
MB_ELEMENT(RelationList);
MB_ELEMENT(CollectionList);

@end

// 
// @file MBLabel.m
// @author Jens Lukas
// @date Jun 22 2010
// @copyright 
//   2010 Jens Lukas <contact@jenslukas.com> \n
//   This program is made available under the terms of the MIT License.
//
// @brief Label entity

#if ! __has_feature(objc_arc)
# warning This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif

#import "MB.h"

@implementation MBLabel

MB_ATTRIBUTE(Type);
MB_STRING_ELEMENT(Name);
MB_STRING_ELEMENT(SortName);
MB_NUMBER_ELEMENT(LabelCode);
MB_ELEMENT(Ipi);
MB_ELEMENT(IpiList);
MB_STRING_ELEMENT(Disambiguation);
MB_STRING_ELEMENT(Country);
MB_ELEMENT(LifeSpan);
MB_ELEMENT(AliasList);
MB_ELEMENT(ReleaseList);
MB_ELEMENT(RelationList);

@end

// 
// @file MBArtist.m
// @author Jens Lukas
// @date Jun 22 2010
// @author Joachim LeBlanc
// @copyright 
//   2010 Jens Lukas <contact@jenslukas.com> \n
//   2012 Joachim LeBlanc <demosdemon@gmail.com> \n
//   This program is made available under the terms of the MIT License.
//
// @brief Artist entity

#if ! __has_feature(objc_arc)
# warning This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif

#import "MB.h"

@implementation MBArtist

MB_ATTRIBUTE(Id);
MB_ATTRIBUTE(Type);
MB_STRING_ELEMENT(Name);
MB_STRING_ELEMENT(SortName);
MB_STRING_ELEMENT(Gender);
MB_STRING_ELEMENT(Country);
MB_STRING_ELEMENT(Disambiguation);
MB_ELEMENT(Ipi);
MB_ELEMENT(IpiList);
MB_ELEMENT(Lifespan);
MB_ELEMENT(AliasList);
MB_ELEMENT(RecordingList);
MB_ELEMENT(ReleaseList);
MB_ELEMENT(ReleaseGroupList);
MB_ELEMENT(LabelList);
MB_ELEMENT(WorkList);
MB_ELEMENT(RelationList);

@end

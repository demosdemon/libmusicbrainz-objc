//
// @file MBMetadata.m
// @date Jun 06 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made avaliable under the terms of the MIT License.
//
// @brief Metadata Entity

#if ! __has_feature(objc_arc)
# warning This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif

#import "MB.h"

@implementation MBMetadata

MB_ATTRIBUTE(Xmlns);
MB_ATTRIBUTE(Generator);
MB_ATTRIBUTE(Created);
MB_ELEMENT(Artist);
MB_ELEMENT(Release);
MB_ELEMENT(ReleaseGroup);
MB_ELEMENT(Recording);
MB_ELEMENT(Label);
MB_ELEMENT(Work);
MB_ELEMENT(Puid);
MB_ELEMENT(Isrc);
MB_ELEMENT(Disc);
MB_ELEMENT(LabelInfoList);
MB_ELEMENT(Rating);
MB_ELEMENT(UserRating);
MB_ELEMENT(Collection);
MB_ELEMENT(ArtistList);
MB_ELEMENT(ReleaseList);
MB_ELEMENT(ReleaseGroupList);
MB_ELEMENT(RecordingList);
MB_ELEMENT(LabelList);
MB_ELEMENT(WorkList);
MB_ELEMENT(IsrcList);
MB_ELEMENT(AnnotationList);
MB_ELEMENT(CdstubList);
MB_ELEMENT(FreedbDiscList);
MB_ELEMENT(TagList);
MB_ELEMENT(UserTagList);
MB_ELEMENT(CollectionList);
MB_ELEMENT(Cdstub);
MB_ELEMENT(Message);

@end

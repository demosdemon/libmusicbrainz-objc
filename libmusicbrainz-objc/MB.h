//
// @file MB.h
// @author Joachim LeBlanc
// @date Jun 05 2012
// @copyright
//   2012 Joachim LeBlanc <demosdemon@gmail.com> \n
//   This program is made available under the terms of the MIT License.
//
// @brief Entry point to the api, import this file and nothing else.

#ifdef DEBUG
#   define DLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#   define DLog(...)
#endif

// ALog always displays output regardless of the DEBUG setting
#define ALog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);

#define NOT_IMPLEMENTED() \
  ALog(@"Not Implemented exception thrown"); \
  [NSException raise:@"Not Implemented" format:@"Not Implemented", __FILE__]

#import <Foundation/Foundation.h>
#import "MBQuery.h"
#import "MBRequest.h"
#import "MBQueryDelegate.h"
#import "Entities/MBEntity.h"
#import "Entities/MBError.h"
#import "Entities/MBMetadata.h"
#import "Entities/MBArtist.h"
#import "Entities/MBRelease.h"
#import "Entities/MBReleaseGroup.h"
#import "Entities/MBRecording.h"
#import "Entities/MBLabel.h"
#import "Entities/MBWork.h"
#import "Entities/MBDisc.h"
#import "Entities/MBPUID.h"
#import "Entities/MBISRC.h"
#import "Entities/MBArtistCredit.h"
#import "Entities/MBRelation.h"
#import "Entities/MBAlias.h"
#import "Entities/MBTag.h"
#import "Entities/MBUserTag.h"
#import "Entities/MBRating.h"
#import "Entities/MBUserRating.h"
#import "Entities/MBLabelInfo.h"
#import "Entities/MBMedium.h"
#import "Entities/MBTrack.h"
#import "Entities/MBAnnotation.h"
#import "Entities/MBCDStub.h"
#import "Entities/MBFreeDbDisc.h"
#import "Entities/MBNonMbTrack.h"
#import "Entities/MBCollection.h"
#import "Entities/MBLifeSpan.h"
#import "Entities/MBRateAndTaggableEntity.h"
#import "Entities/MBList.h"
#import "Entities/MBTextRepresentation.h"
#import "Entities/MBNameCredit.h"
#import "Entities/MBAttribute.h"
#import "Entities/MBISWC.h"
#import "Entities/MBIPI.h"
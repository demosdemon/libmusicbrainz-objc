//
// @file MBUtils.h
// @author Joachim LeBlanc
// @date Jul 08 2012
// @copyright
//   2012 Joachim LeBlanc <demosdemon@gmail.com> \n
//   This program is made available under the terms of the MIT License.
//
// @brief A few utilities

#import "NSString+MBKeyManipulation.h"

#ifdef DEBUG
#   define DLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#   define DLog(...)
#endif

#define ALog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);

#define NOT_IMPLEMENTED() do { \
    ALog(@"Not Implemented exception thrown"); \
    [NSException raise:@"Not Implemented" format:@"Not Implemented"]; \
  } while (0)

#define MB_ATTRIBUTE(Name) @synthesize Name = _##Name
#define MB_ELEMENT(Name) @synthesize Name = _##Name
#define MB_STRING_ELEMENT(Name) @synthesize Name = _##Name; \
  - (void) set##Name :(MBEntity *)entity \
    { \
      if (entity && entity.Text) \
        _##Name = entity.Text; \
    }
#define MB_NUMBER_ELEMENT(Name) @synthesize Name = _##Name; \
  - (void) set##Name :(MBEntity *)entity \
    { \
      if (entity && entity.Text) \
        _##Name = [entity.Text number]; \
    }

#define kISRC_Regex @"^[A-Z{2}[A-Z0-9]{3}[0-9]{2}[0-9]{5}$"
#define kUUID_Regex @"^[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$"

#define kErrorKey        @"error"
#define kListKey         @"list"
#define kMetadataKey     @"metadata"
#define kLifespanKey     @"life-span"
#define kTextRepresentationKey @"text-representation"
#define kIPIKey          @"ipi"
#define kArtistKey       @"artist"
#define kReleaseKey      @"release"
#define kReleaseGroupKey @"release-group"
#define kRecordingKey    @"recording"
#define kLabelKey        @"label"
#define kWorkKey         @"work"
#define kDiscKey         @"disc"
#define kPUIDKey         @"puid"
#define kISRCKey         @"isrc"
#define kArtistCreditKey @"artist-credit"
#define kNameCreditKey   @"name-credit"
#define kRelationKey     @"relation"
#define kAttributeKey    @"attribute"
#define kAliasKey        @"alias"
#define kISWCKey         @"iswc"
#define kTagKey          @"tag"
#define kUserTagKey      @"user-tag"
#define kRatingKey       @"rating"
#define kUserRatingKey   @"user-rating"
#define kLabelInfoKey    @"label-info"
#define kMediumKey       @"medium"
#define kTrackKey        @"track"
#define kAnnotationKey   @"annotation"
#define kCDStubKey       @"cdstub"
#define kFreeDBDiscKey   @"freedb-disc"
#define kNonMBTrackKey   @"nonmb-track"
#define kCollectionKey   @"collection"
#define kMessageKey      @"message"
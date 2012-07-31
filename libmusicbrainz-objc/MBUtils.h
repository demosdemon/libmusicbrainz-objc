//
// @file MBUtils.h
// @author Joachim LeBlanc
// @date Jul 08 2012
// @copyright
//   2012 Joachim LeBlanc <demosdemon@gmail.com> \n
//   This program is made available under the terms of the MIT License.
//
// @brief A few utilities

#import <Foundation/Foundation.h>
#import "NSString+MBKeyManipulation.h"

#ifdef DEBUG
#   define DLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#   define DLog(...)
#endif

#define ALog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);

#define DLogObject(obj) DLog(#obj " => %@", obj)

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

#if __has_feature(objc_dictionary_literals)
# define DICT_LIT 1
#else
# define DICT_LIT 0
#endif

#if __has_feature(objc_array_literals)
# define ARRAY_LIT 1
#else
# define ARRAY_LIT 0
#endif

#if __has_feature(objc_subscripting)
# define OBJ_SUB 1
#else
# define OBJ_SUB 0
#endif

#if __has_feature(objc_boxed_expressions)
# define NUM_LIT 1
#else
# define NUM_LIT 0
#endif

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

NS_INLINE NSString * urlEscapeStringWithEncoding(NSString * unencodedString, NSStringEncoding encoding)
{
  return CFBridgingRelease
  (CFURLCreateStringByAddingPercentEscapes
   (NULL,
    (__bridge CFStringRef)unencodedString, NULL,
    (CFStringRef)@"!*'\"();:@&=+$,/?%#[]% ",
    CFStringConvertNSStringEncodingToEncoding(encoding)
    )
   );
}

NS_INLINE NSString * urlEscapeString(NSString * unencodedString)
{ return urlEscapeStringWithEncoding(unencodedString, NSUTF8StringEncoding); }


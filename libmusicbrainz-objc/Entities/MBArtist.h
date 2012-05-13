/// 
/// @file MBArtist.h
/// @author Jens Lukas
/// @date Jun 22 2010
/// @author Joachim LeBlanc
/// @copyright 
///   2010 Jens Lukas <contact@jenslukas.com> \n
///   2012 Joachim LeBlanc <demosdemon@gmail.com> \n
///   This program is made available under the terms of the MIT License.
///
/// @brief Artist entity

#import <Foundation/Foundation.h>
#import "RateAndTaggableEntity.h"
#import "MBEntity.h"

@class MBLifespan;
@class MBUserTag;
@class MBRating;
@class MBUserRating;

@interface MBArtist : MBEntity <MBRateAndTaggableEntity> {
 @private
  NSString *_type;
  NSString *_name;
  NSString *_sort_name;
  NSString *_gender;
  NSString *_country;
  NSString *_disambiguation;

}

// All NSStrings* must be copy, nonatomic
@property (copy, nonatomic, readonly) NSString *Type;
@property (copy, nonatomic, readonly) NSString *Name;
@property (copy, nonatomic, readonly) NSString *SortName;
@property (copy, nonatomic, readonly) NSString *Gender;
@property (copy, nonatomic, readonly) NSString *Country;
@property (copy, nonatomic, readonly) NSString *Disambiguation;
@property (nonatomic, readonly) NSArray *IPIList; ///< NSArray of MBIPI objects
@property (nonatomic, readonly) MBLifespan *Lifespan;
@property (nonatomic, readonly) NSArray *AliasList; ///< NSArray of MBAlias objects 
@property (nonatomic, readonly) NSArray *RecordingList; ///< NSArray of MBRecording objects 
@property (nonatomic, readonly) NSArray *ReleaseList; ///< NSArray of MBRelease objects 
@property (nonatomic, readonly) NSArray *ReleaseGroupList; //< NSArray of MBReleaseGroup objects
@property (nonatomic, readonly) NSArray *LabelList; ///< NSArray of MBLabel objects
@property (nonatomic, readonly) NSArray *WorkList; ///< NSArray of MBWork objects
@property (nonatomic, readonly) NSArray *RelationListList; ///< NSArray of MBRelationList objects

@end

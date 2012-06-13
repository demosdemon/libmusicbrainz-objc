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

#import "RateAndTaggableEntity.h"

@class MBLifeSpan, MBRating, MBUserRating;

@interface MBArtist <MBRateAndTaggableEntity> {
  NSDictionary *_dict;
}

// All NSStrings* must be copy, nonatomic
@property (copy, nonatomic, readonly) NSString *Id;
@property (copy, nonatomic, readonly) NSString *Type;
@property (copy, nonatomic, readonly) NSString *Name;
@property (copy, nonatomic, readonly) NSString *SortName;
@property (copy, nonatomic, readonly) NSString *Gender;
@property (copy, nonatomic, readonly) NSString *Country;
@property (copy, nonatomic, readonly) NSString *Disambiguation;
@property (nonatomic, readonly) NSArray *IPIList; ///< NSArray of NSString objects
@property (nonatomic, readonly) MBLifeSpan *Lifespan;
@property (nonatomic, readonly) NSArray *AliasList; ///< NSArray of MBAlias objects
@property (nonatomic, readonly) NSArray *RecordingList; ///< NSArray of MBRecording objects
@property (nonatomic, readonly) NSArray *ReleaseList; ///< NSArray of MBRelease objects
@property (nonatomic, readonly) NSArray *ReleaseGroupList; //< NSArray of MBReleaseGroup objects
@property (nonatomic, readonly) NSArray *LabelList; ///< NSArray of MBLabel objects
@property (nonatomic, readonly) NSArray *WorkList; ///< NSarray of MBWork objects
@property (nonatomic, readonly) NSArray *RelationListList; //< NSArray of NSArray objects, which each contain MBRelation objects

@end

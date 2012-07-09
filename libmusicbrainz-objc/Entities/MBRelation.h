//
// @file MBRelation.h
// @date Jun 06 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made avaliable under the terms of the MIT License.
//
// @brief Relation Entity

#import "MBEntity.h"

@class MBList, MBArtist, MBRelease, MBReleaseGroup, MBRecording, MBLabel, MBWork;

/// Represents a `<relation/>` element
@interface MBRelation : MBEntity

@property (nonatomic, readonly) NSString * Type;
@property (nonatomic, readonly) NSString * Target;
@property (nonatomic, readonly) NSString * Direction;
@property (nonatomic, readonly) MBList * AttributeList;
@property (nonatomic, readonly) NSString * Begin;
@property (nonatomic, readonly) NSString * End;
@property (nonatomic, readonly) BOOL Ended;

@property (nonatomic, readonly) MBArtist * Artist;
@property (nonatomic, readonly) MBRelease * Release;
@property (nonatomic, readonly) MBReleaseGroup * ReleaseGroup;
@property (nonatomic, readonly) MBRecording * Recording;
@property (nonatomic, readonly) MBLabel * Label;
@property (nonatomic, readonly) MBWork * Work;

@end


/// 
/// @file MBLabel.h
/// @author Jens Lukas
/// @date Jun 22 2010
/// @copyright 
///   2010 Jens Lukas <contact@jenslukas.com> \n
///   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
///   This program is made available under the terms of the MIT License.
///
/// @brief Label entity

#import "MBRateAndTaggableEntity.h"
#import "MBLifeSpan.h"

@interface MBLabel : MBRateAndTaggableEntity

@property (copy, nonatomic, readonly) NSString *Id;
@property (copy, nonatomic, readonly) NSString *Type;
@property (copy, nonatomic, readonly) NSString *Name;
@property (copy, nonatomic, readonly) NSString *SortName;
@property (nonatomic, readonly) NSNumber *LabelCode;
@property (nonatomic, readonly) NSArray *IpiList; ///< NSArray of MBIPI objects
@property (copy, nonatomic, readonly) NSString *Disambiguation;
@property (copy, nonatomic, readonly) NSString *Country;
@property (nonatomic, readonly) MBLifeSpan *LifeSpan;
@property (nonatomic, readonly) NSArray *AliasList; ///< NSArray of MBAlias objects
@property (nonatomic, readonly) NSArray *ReleaseList; ///< NSArray of MBRelease objects

@end

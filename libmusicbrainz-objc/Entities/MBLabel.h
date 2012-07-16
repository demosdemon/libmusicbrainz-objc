//
// @file MBLabel.h
// @author Jens Lukas
// @date Jun 22 2010
// @copyright
//   2010 Jens Lukas <contact@jenslukas.com> \n
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made available under the terms of the MIT License.
//
// @brief Label entity

#import "MBRateAndTaggableEntity.h"

@class MBLifeSpan, MBList, MBIpi;

/// Represents a `<label/>` element
@interface MBLabel : MBRateAndTaggableEntity

/// Type of label
@property (nonatomic, readonly) NSString *Type;
/// Name of the label
@property (nonatomic, readonly) NSString *Name;
/// Sort name for the label
@property (nonatomic, readonly) NSString *SortName;
/// Label Code for the label
@property (nonatomic, readonly) NSNumber *LabelCode;
/// Artist IPI
///
/// Deprecated before first release.
@property (nonatomic, readonly) MBIpi *Ipi DEPRECATED_ATTRIBUTE;
/// MBList with MBIPI objects
@property (nonatomic, readonly) MBList *IpiList;
/// Disambiguation comment for the label
@property (nonatomic, readonly) NSString *Disambiguation;
/// ISO-3166 Country for the label
///
/// Matches regular expression `[A-Z]{2}` or empty
@property (nonatomic, readonly) NSString *Country;
/// Lifespan of the label
@property (nonatomic, readonly) MBLifeSpan *LifeSpan;
/// MBList with MBAlias objects
@property (nonatomic, readonly) MBList *AliasList;
/// MBList with MBRelease objects
@property (nonatomic, readonly) MBList *ReleaseList;
/// MBList with MBRelation objects
@property (nonatomic, readonly) MBList *RelationList;

@end

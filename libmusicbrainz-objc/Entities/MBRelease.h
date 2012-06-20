/// 
/// @file MBRelease.h
/// @author Jens Lukas
/// @date Jun 7 2010
/// @copyright 
///   2010 Jens Lukas <contact@jenslukas.com> \n
///   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
///   This program is made available under the terms of the MIT License.
///
/// @brief Release entity

#import "MBRateAndTaggableEntity.h"
#import "MBTextRepresentation.h"
#import "MBArtistCredit.h"
#import "MBReleaseGroup.h"

@interface MBRelease : MBRateAndTaggableEntity

@property (copy, nonatomic, readonly) NSString *Id;
@property (copy, nonatomic, readonly) NSString *Title;
@property (copy, nonatomic, readonly) NSString *Status;
@property (copy, nonatomic, readonly) NSString *Quality;
@property (copy, nonatomic, readonly) NSString *Disambiguation;
@property (copy, nonatomic, readonly) NSString *Packaging;
@property (nonatomic, readonly) MBTextRepresentation *TextRepresentation;
@property (nonatomic, readonly) MBArtistCredit *ArtistCredit;
@property (nonatomic, readonly) MBReleaseGroup *ReleaseGroup;
@property (copy, nonatomic, readonly) NSString *Date;
@property (copy, nonatomic, readonly) NSString *Country;
@property (copy, nonatomic, readonly) NSString *Barcode;
@property (copy, nonatomic, readonly) NSString *Asin;
@property (nonatomic, readonly) NSArray *LabelInfoList; ///< NSArray of MBLabelInfo objects
@property (nonatomic, readonly) NSArray *MediumList; ///< NSArray of MBMedium objects
@property (nonatomic, readonly) NSArray *RelationListList; ///< NSArray of NSArrays that contain MBRelation objects;
@property (nonatomic, readonly) NSArray *CollectionList; ///< NSArray of MBCollection objects

@end

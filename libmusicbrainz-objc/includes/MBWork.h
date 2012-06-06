/// 
/// @file MBWork.h
/// @author Brandon LeBlanc
/// @date Jun 06 2012
/// @copyright 
///   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
///   This program is made available under the terms of the MIT License.
///
/// @brief Work Entity

#import "MBEntity.h"

@interface MBWork : MBEntity

@property (copy, nonatomic, readonly) NSString *Id;
@property (copy, nonatomic, readonly) NSString *Type;
@property (copy, nonatomic, readonly) NSString *Title;
@property (copy, nonatomic, readonly) NSString *Language;
@property (nonatomic, readonly) MBArtistCredit *ArtistCredit;
@property (nonatomic, readonly) NSArray *ISWCList; ///< NSArray of MBISWC objects
@property (copy, nonatomic, readonly) NSString *Disambiguation;
@property (nonatomic, readonly) NSArray *AliasList; ///< NSArray of MBAlias objects
@property (nonatomic, readonly) NSArray *RelationListList; ///< NSArray of NSArray objects that contain MBRelation objects
@property (nonatomic, readonly) NSArray *TagList; ///< NSArray of MBTag objects
@property (nonatomic, readonly) NSArray *UserTagList; ///< NSArray of MBUserTag objects
@property (nonatomic, readonly) MBRating *Rating;
@property (nonatomic, readonly) MBUserRating *UserRating;

@end

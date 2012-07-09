//
// @file MBCDStub.h
// @date Jun 06 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made avaliable under the terms of the MIT License.
//
// @brief CDStub Entity

#import "MBEntity.h"

/// Represents a `<cdstub/>` element
@interface MBCdstub : MBEntity

@property (nonatomic, readonly) NSString * Id;
@property (nonatomic, readonly) NSString * Title;
@property (nonatomic, readonly) NSString * Artist;
@property (nonatomic, readonly) NSString * Barcode;
@property (nonatomic, readonly) NSString * Comment;
@property (nonatomic, readonly) MBList * NonmbTrackList;

@end


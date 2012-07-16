//
// @file MBCollection.h
// @date Jun 06 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made avaliable under the terms of the MIT License.
//
// @brief Collection Entity

#import "MBEntity.h"

/// Represents a `<collection/>` element
@interface MBCollection : MBEntity <MBUniqueIdentifier>

/// Unique MusicBrainz ID for this entity
@property (nonatomic, readonly) NSString *Id;
@property (nonatomic, readonly) NSString * Name;
@property (nonatomic, readonly) NSString * Editor;
@property (nonatomic, readonly) MBList * ReleaseList;

@end


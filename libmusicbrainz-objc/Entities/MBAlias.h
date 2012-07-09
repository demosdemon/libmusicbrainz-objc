//
// @file MBAlias.h
// @date Jun 06 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made avaliable under the terms of the MIT License.
//
// @brief Alias Entity

#import "MBEntity.h"

/// Represents an `<alias/>` element
@interface MBAlias : MBEntity

@property (nonatomic, readonly) NSString * Locale;
@property (nonatomic, readonly) NSString * SortName;
@property (nonatomic, readonly) NSString * Primary;
@property (nonatomic, readonly) NSString * BeginDate;
@property (nonatomic, readonly) NSString * EndDate;

@end


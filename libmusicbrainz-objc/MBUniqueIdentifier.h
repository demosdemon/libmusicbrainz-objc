//
// @file MBUniqueIdentifier.h
// @date Jul 16 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made avaliable under the terms of the MIT License.
//
// @brief

#import <Foundation/Foundation.h>

@protocol MBUniqueIdentifier <NSObject>
@required
@property (nonatomic, readonly) NSString * Id;
@end

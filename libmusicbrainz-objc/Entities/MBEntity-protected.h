/// 
/// @file MBEntity-protected.h
/// @author Joachim LeBlanc
/// @date June 05 2012
/// @copyright 
///   2012 Joachim LeBlanc <demosdemon@gmail.com> \n
///   This program is made available under the terms of the MIT License.
/// 
/// @brief Base class for all entities

#import <Foundation/Foundation.h>

@interface MBEntity (protected)

- (NSArray *) list:(id)list type:(Class)type;

@end

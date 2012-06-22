/// 
/// @file MBError.h
/// @author Joachim LeBlanc
/// @date June 19 2012
/// @copyright 
///   2012 Joachim LeBlanc <demosdemon@gmail.com> \n
///   This program is made available under the terms of the MIT License.
/// 
/// @brief Base class for all errors

#import <Foundation/Foundation.h>
#import "../XML.h"

@interface MBError : NSObject

+ (NSError *) entityWithElement:(NSXMLElement *)element;


@end

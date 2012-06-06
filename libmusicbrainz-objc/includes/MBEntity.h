/// 
/// @file MBEntity.h
/// @author Joachim LeBlanc
/// @date May 13 2012
/// @copyright 
///   2012 Joachim LeBlanc <demosdemon@gmail.com> \n
///   This program is made available under the terms of the MIT License.
/// 
/// @brief Base class for all entities

#import <Foundation/Foundation.h>
#import "MBQuery.h"

@interface MBEntity : NSObject {
 @protected
  NSDictionary *_dict;
}

- (id) init;
- (id) initWithDict:(NSDictionary*)dict;
- (id) initWithXml:(NSString*)xml;
- (id) initWithXml:(NSString*)xml 
             Error:(NSError**)error;
- (id) initWithXmlData:(NSData*)xml;
- (id) initWithXmlData:(NSData*)xml 
                 Error:(NSError**)error;

- (NSDictionary*) getExtraAttributeByName:(NSString*)name;
- (NSDictionary*) getExtraElementByName:(NSString*)name;

@end

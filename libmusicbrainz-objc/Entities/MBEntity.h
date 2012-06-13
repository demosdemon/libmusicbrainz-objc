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

@protocol MBEntity <NSObject, NSXMLParserDelegate>

@required

@property (retain, atomic) id<MBEntity> parent;

- (id) initWithParent:(id<MBEntity>)parent;

- (void) parser:(NSXMLParser *)parser 
didStartElement:(NSString *)elementName 
   namespaceURI:(NSString *)namespaceURI 
  qualifiedName:(NSString *)qName 
     attributes:(NSDictionary *)attributeDict;

- (void) parser:(NSXMLParser *)parser 
  didEndElement:(NSString *)elementName 
   namespaceURI:(NSString *)namespaceURI 
  qualifiedName:(NSString *)qName;

- (void) parser:(NSXMLParser *)parser 
foundCharacters:(NSString *)string;



@end

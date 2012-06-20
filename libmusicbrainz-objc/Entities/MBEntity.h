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

@interface MBEntity : NSObject
{
 @private
  NSMutableDictionary *_attributes;
  NSMutableDictionary *_elements;
}

/// Key will be name of attribute, Value will be NSString
@property (copy, nonatomic, readonly) NSDictionary *ExtraAttributes;

/** Key will be name of element, Value will be either an NSDictionary, NSArray,
 *  or NSString depending on the type of element. Keys for attributes for elements
 *  in the dictionary will prefixed with @ to prevent overlapping.
 */
@property (copy, nonatomic, readonly) NSDictionary *ExtraElements;

- (id) initWithElement:(NSXMLElement *)element;
+ (id) entityWithElement:(NSXMLElement *)element;

+ (id) xmlElementToEntity:(NSXMLElement *)element;

/**
 *  Overridden implementations must detach or remove children and attribute used
 *  from the element before calling [super parseElement:], otherwise all 
 *  children and elements will appear in ExtraAttributes and ExtraElements
 *
 *  @warning Subclasses must override this method. For extra attribute and extra
 *  attributes to appear in the repsective properties, overriden implementations
 *  must call [super parseElement:] when done processing
 */
- (void) parseElement:(NSXMLElement *)element;


@end

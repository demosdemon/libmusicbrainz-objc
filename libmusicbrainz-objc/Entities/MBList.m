//
// @file MBList.m
// @author Joachim LeBlanc
// @date June 19 2012
// @copyright
//   2012 Joachim LeBlanc <demosdemon@gmail.com> \n
//   This program is made available under the terms of the MIT License.
//
// @brief Base class for all lists

#if ! __has_feature(objc_arc)
# warning This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif

#import "MB.h"

@implementation MBList

@synthesize Offset = _Offset;
@synthesize Count = _Count;
@synthesize TargetType = _TargetType;

- (void) setOffset:(NSXMLNode *)attribute
{
  if (attribute)
    _Offset = attribute.stringValue.number;
}

- (void) setCount:(NSXMLNode *)attribute
{
  if (attribute)
    _Count = attribute.stringValue.number;
}

- (void) setTargetType:(NSXMLNode *)attribute
{
  if (attribute)
    _TargetType = attribute.stringValue;
}

- (id) init
{
  if (self = [super init])
    _elements = [NSMutableArray array];
  return self;
}

- (void) parseElement:(NSXMLElement *)element
{
  [self setOffset:[element attributeForName:@"offset"]];
  [self setCount:[element attributeForName:@"count"]];

  for (NSXMLNode * node in [element attributes])
    [self setValue:node forKey:node.localName.elementToKey];

  for (NSXMLElement * child in [element children])
    [_elements addObject:[MBEntity entityWithElement:child]];
}

- (NSUInteger) elementCount
{
  return [_elements count];
}

- (NSString *) ElementName
{
  if (!_elementName && _elements.count > 0)
    _elementName = [[_elements objectAtIndex:0] ElementName];
  return _elementName;
}

- (id) elementAtIndex:(NSUInteger)index
{
  return [_elements objectAtIndex:index];
}

- (NSUInteger) countByEnumeratingWithState:(NSFastEnumerationState *)state
                                   objects:(id __unsafe_unretained [])buffer
                                     count:(NSUInteger)len
{
  return [_elements countByEnumeratingWithState:state objects:buffer count:len];
}


@end

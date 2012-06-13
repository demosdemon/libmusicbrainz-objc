///
/// @file NSMutableArray_QuackMethods.m
/// @date Jun 12 2012
/// @copyright
///   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
///   This program is made avaliable under the terms of the MIT License.
///
/// @brief Extension to NSMutableArray for quick Stack and Queue operations

#import <Foundation/Foundation.h>
#import "NSMutableArray_QuackMethods.h"

@implementation NSMutableArray (QuackMethods)

// Queue Methods
- (void) enqueue:(id)obj
{
  [self addObject:obj];
}

- (id) dequeue
{
  id ret = [self objectAtIndex:0];
  [self removeObjectAtIndex:0];
  return ret;
}

// Stack Methods
- (void) push:(id)obj
{
  [self addObject:obj];
}

- (id) pop
{
  id ret = [self lastObject];
  [self removeLastObject];
  return ret;
}

@end

///
/// @file NSMutableArray_QuackMethods.h
/// @date Jun 12 2012
/// @copyright
///   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
///   This program is made avaliable under the terms of the MIT License.
///
/// @brief Extension to NSMutableArray for quick Stack and Queue operations

#import <Foundation/Foundation.h>

@interface NSMutableArray (QuackMethods)

// Queue Methods
- (void) enqueue:(id)obj;
- (id) dequeue;

// Stack Methods
- (void) push:(id)obj;
- (id) pop;

@end

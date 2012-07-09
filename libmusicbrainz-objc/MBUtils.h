// @file MB.h
// @author Joachim LeBlanc
// @date Jul 08 2012
// @copyright
//   2012 Joachim LeBlanc <demosdemon@gmail.com> \n
//   This program is made available under the terms of the MIT License.
//
// @brief A few utilities

#ifdef DEBUG
#   define DLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#   define DLog(...)
#endif

#define ALog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);

#define NOT_IMPLEMENTED() \
ALog(@"Not Implemented exception thrown"); \
[NSException raise:@"Not Implemented" format:@"Not Implemented", __FILE__]

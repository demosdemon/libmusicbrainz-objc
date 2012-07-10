// @file NSString+MBKeyManipulation.h
// @author Joachim LeBlanc
// @date Jul 09 2012
// @copyright
//   2012 Joachim LeBlanc <demosdemon@gmail.com> \n
//   This program is made available under the terms of the MIT License.
//
// @brief 


@interface NSString (MBKeyManipulation)

- (NSString *) elementToKey;

- (NSString *) capitalizedElementToKey;

- (Class) classForElementName;

- (NSString *) classNameToKey;

- (BOOL) validatePUID;

- (BOOL) validateISRC;

- (BOOL) equals:(NSString *)other;

- (BOOL) empty;

- (SEL) setterSelector;

@end
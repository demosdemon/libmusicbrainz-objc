// @file NSString+MBKeyManipulation.m
// @author Joachim LeBlanc
// @date Jul 09 2012
// @copyright
//   2012 Joachim LeBlanc <demosdemon@gmail.com> \n
//   This program is made available under the terms of the MIT License.
//
// @brief 

#if ! __has_feature(objc_arc)
# warning This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif

#import "MB.h"
#import "NSString+MBKeyManipulation.h"

@implementation NSString (MBKeyManipulation)

- (NSString *) elementToKey
{
  NSScanner * scanner = [NSScanner scannerWithString:self];
  [scanner setCharactersToBeSkipped:[NSCharacterSet characterSetWithCharactersInString:@"-"]];
  NSMutableString * key = [NSMutableString string];
  NSString * string = nil;
  BOOL caps = NO;
  while ([scanner scanUpToString: @"-" intoString: &string])
  {
    if (caps)
      string = [string capitalizedString];
    [key appendString: string];
    caps = YES;
  }
  return key;
}

- (NSString *) capitalizedElementToKey
{
  NSScanner * scanner = [NSScanner scannerWithString:self];
  [scanner setCharactersToBeSkipped:[NSCharacterSet characterSetWithCharactersInString:@"-"]];
  NSMutableString * key = [NSMutableString string];
  NSString * string = nil;
  while ([scanner scanUpToString: @"-" intoString: &string])
  {
    string = [string capitalizedString];
    [key appendString: string];
  }
  return key;
}

- (Class) classForElementName
{
  if ([[self substringFromIndex:self.length-4] equals:kListKey])
    return [MBList class];
  
  static NSDictionary * elementToClassDict;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    elementToClassDict = [NSDictionary dictionaryWithObjectsAndKeys:
                          [MBError class], kErrorKey, 
                          [MBMetadata class], kMetadataKey,
                          [MBLifeSpan class], kLifespanKey,
                          [MBArtist class], kArtistKey,
                          [MBRelease class], kReleaseKey,
                          [MBReleaseGroup class], kReleaseGroupKey,
                          [MBRecording class], kRecordingKey,
                          [MBLabel class], kLabelKey,
                          [MBWork class], kWorkKey,
                          [MBDisc class], kDiscKey,
                          [MBPuid class], kPUIDKey,
                          [MBIsrc class], kISRCKey,
                          [MBArtistCredit class], kArtistCreditKey,
                          [MBRelation class], kRelationKey,
                          [MBAlias class], kAliasKey,
                          [MBTag class], kTagKey,
                          [MBUserTag class], kUserTagKey,
                          [MBRating class], kRatingKey,
                          [MBUserRating class], kUserRatingKey,
                          [MBLabelInfo class], kLabelInfoKey,
                          [MBMedium class], kMediumKey,
                          [MBTrack class], kTrackKey,
                          [MBAnnotation class], kAnnotationKey,
                          [MBCdstub class], kCDStubKey,
                          [MBFreedbDisc class], kFreeDBDiscKey,
                          [MBNonmbTrack class], kNonMBTrackKey,
                          [MBCollection class], kCollectionKey,
                          [MBTextRepresentation class], kTextRepresentationKey,
                          [MBNameCredit class], kNameCreditKey,
                          [MBAttribute class], kAttributeKey,
                          [MBIswc class], kISWCKey,
                          [MBIpi class], kIPIKey,
                          nil];
  });

  Class type = [elementToClassDict objectForKey:self];
  if (type) return type;
  
  DLog(@"Entity %@ did not match", self);
  return [MBEntity class];
}

- (NSString *) classNameToKey
{
  static NSString * _regex = @"([a-z])([A-Z])";
  NSError * error = nil;
  NSRegularExpression * regex = [NSRegularExpression regularExpressionWithPattern:_regex options:0 error:&error];
  if (!regex) {
    DLog(@"%@", error);
    return self;
  }
  return [[regex stringByReplacingMatchesInString:[self substringFromIndex:2] 
                                          options:0 
                                            range:NSMakeRange(0, self.length) 
                                     withTemplate:@"$1-$2"] lowercaseString];
}

- (BOOL) validatePUID
{
  NSError *error = nil;
  NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:kUUID_Regex options:0 error:&error];
  if (error) return NO;
  return ([[regex matchesInString:self options:0 range:NSMakeRange(0, self.length)] count] == 1);
}

- (BOOL) validateISRC
{
  NSError *error = nil;
  NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:kISRC_Regex options:0 error:&error];
  if (error) return NO;
  return ([[regex matchesInString:self options:0 range:NSMakeRange(0, self.length)] count] == 1);
}

- (BOOL) equals:(NSString *)other
{
  return [self caseInsensitiveCompare:other] == NSOrderedSame;
}

- (BOOL) empty
{
  return (!self || [self equals:@""]);
}

- (SEL) setterSelector
{
  return NSSelectorFromString([NSString stringWithFormat:@"set%@:", [self capitalizedElementToKey]]);
}

- (NSNumber *) number
{
  return [[[NSNumberFormatter alloc] init] numberFromString:self]; 
}

@end
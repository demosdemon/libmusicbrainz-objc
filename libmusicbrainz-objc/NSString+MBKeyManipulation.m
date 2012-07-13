//
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
  if ([self length] >= 4 && [[self substringFromIndex:self.length-4] equals:kListKey])
    return [MBList class];
  
  static NSDictionary * elementToClassDict;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    const id classes[] = { [MBAlias class], [MBAnnotation class], [MBArtist class], [MBArtistCredit class],
      [MBAttribute class], [MBCdstub class], [MBCollection class], [MBDisc class], [MBError class], 
      [MBFreedbDisc class], [MBIpi class], [MBIsrc class], [MBIswc class], [MBLabel class], [MBLabelInfo class],
      [MBLifeSpan class], [MBMedium class], [MBMessage class], [MBMetadata class], [MBNameCredit class],
      [MBNonmbTrack class], [MBPuid class], [MBRating class], [MBRecording class], [MBRelation class], 
      [MBRelease class], [MBReleaseGroup class], [MBTag class], [MBTextRepresentation class], [MBTrack class],
      [MBUserRating class], [MBUserTag class], [MBWork class]
    };
    const id keys[] = { kAliasKey, kAnnotationKey, kArtistKey, kArtistCreditKey,
      kAttributeKey, kCDStubKey, kCollectionKey, kDiscKey, kErrorKey, 
      kFreeDBDiscKey, kIPIKey, kISRCKey, kISWCKey, kLabelKey, kLabelInfoKey,
      kLifespanKey, kMediumKey, kMessageKey, kMetadataKey, kNameCreditKey,
      kNonMBTrackKey, kPUIDKey, kRatingKey, kRecordingKey, kRelationKey, 
      kReleaseKey, kReleaseGroupKey, kTagKey, kTextRepresentationKey, kTrackKey,
      kUserRatingKey, kUserTagKey, kWorkKey
    };
    elementToClassDict = [NSDictionary dictionaryWithObjects:classes 
                                                     forKeys:keys 
                                                       count:33];
  });

  Class type = [elementToClassDict objectForKey:self];
  if (type) return type;
  
  DLog(@"Entity \"%@\" did not match", self);
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
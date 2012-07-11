//
//  Entities/MBAliasTestCase.m
//  libmusicbrainz-objc
//
//  Created by Joachim LeBlanc on 7/11/12.
//  Copyright (c) 2012.
//  This program is made available under the terms of the MIT License.
//

#import "MBTestUtils.h"
#import "MB.h"

#define ALIAS_TEST_XML @"<alias \
  locale=\"US\" \
  sort-name=\"MB Test Artist\" \
  type=\"Test\" \
  primary=\"Test\" \
  begin-date=\"2012\" \
  end-date=\"2012\">MB Test Artist</alias>"

@interface MBAliasTestCase : GTMTestCase
{
  NSXMLElement * _aliasTest;
  MBAlias * _alias;
}
@end

@implementation MBAliasTestCase

- (void) setUp
{
  [super setUp];

  // setUp
  _aliasTest = [[NSXMLElement alloc] initWithXMLString:ALIAS_TEST_XML error:nil];
  _alias = [MBAlias entityWithElement:_aliasTest];
}

- (void) tearDown
{
  // tearDown

  [super tearDown];
}

- (void) testInit
{
  STAssertNotNil(_alias, @"alias is nil");
  STAssertTrue([_alias isMemberOfClass:[MBAlias class]], @"alias is not an alias object");
}

- (void) testBeginDate
{
  STAssertEqualStrings(_alias.BeginDate, @"2012", @"BeginDate = %@", _alias.BeginDate);
}

- (void) testEndDate
{
  STAssertEqualStrings(_alias.EndDate, @"2012", @"EndDate = %@", _alias.EndDate);
}

- (void) testLocale
{
  STAssertEqualStrings(_alias.Locale, @"US", @"Locale = %@", _alias.Locale);
}

- (void) testPrimary
{
  STAssertEqualStrings(_alias.Primary, @"Test", @"Primary = %@", _alias.Primary);
}

- (void) testSortName
{
  STAssertEqualStrings(_alias.SortName, @"MB Test Artist", @"SortName = %@", _alias.SortName);
}

- (void) testText
{
  STAssertEqualStrings(_alias.Text, @"MB Test Artist", @"Text = %@", _alias.Text);
}

@end


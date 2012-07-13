//
//  Entities/MBEntityTestCase.m
//  libmusicbrainz-objc
//
//  Created by Joachim LeBlanc on 7/11/12.
//  Copyright (c) 2012.
//  This program is made available under the terms of the MIT License.
//

#import "GTMSenTestCase.h"
#import "MB.h"

@interface MBEntityTestCase : GTMTestCase 
@end

@implementation MBEntityTestCase 

- (void) setUp
{
  [super setUp];

  // setUp
}

- (void) tearDown
{
  // tearDown

  [super tearDown];
}

- (void) testInitWithElement
{
}

- (void) testEntityWithElement
{
}

- (void) testParseElement
{

}

- (void) testElementName
{
}

- (void) testBegin0
{
  NSString * xmlString = @"<begin>1001-01-01</begin>";
  
  // Do your test for the <begin/> element
}
- (void) testLanguage0
{
  NSString * xmlString = @"<language>eng</language>";
  
  // Do your test for the <language/> element
}
- (void) testLanguage1
{
  NSString * xmlString = @"<language>eng</language>";
  
  // Do your test for the <language/> element
}
- (void) testUserTagList0
{
  NSString * xmlString = @"<user-tag-list>\n  <user-tag>\n    <name>test</name>\n  </user-tag>\n</user-tag-list>";
  
  // Do your test for the <user-tag-list/> element
}
- (void) testReleaseList0
{
  NSString * xmlString = @"<release-list count=\"3\">\n  <release id=\"1735e086-462e-42c3-b615-eebbd5e9f352\">\n    <title>Nagios Check Release</title>\n    <status>Pseudo-Release</status>\n    <quality>normal</quality>\n    <text-representation>\n      <language>eng</language>\n      <script>Latn</script>\n    </text-representation>\n    <date>1920</date>\n    <medium-list count=\"0\"></medium-list>\n  </release>\n  <release id=\"72cf3c87-d97d-49cc-8781-661ad3580091\">\n    <title>TEST</title>\n    <quality>normal</quality>\n    <medium-list count=\"0\"></medium-list>\n  </release>\n  <release id=\"a9d8b538-c20a-4025-aea1-5530d616a20a\">\n    <title>License Placeholder</title>\n    <status>Official</status>\n    <packaging>None</packaging>\n    <quality>normal</quality>\n    <text-representation>\n      <language>eng</language>\n      <script>Latn</script>\n    </text-representation>\n    <date>2011-12-09</date>\n    <country>XW</country>\n    <medium-list count=\"0\"></medium-list>\n  </release>\n</release-list>";
  
  // Do your test for the <release-list/> element
}
- (void) testFirstReleaseDate0
{
  NSString * xmlString = @"<first-release-date>2011-12-09</first-release-date>";
  
  // Do your test for the <first-release-date/> element
}
- (void) testFirstReleaseDate1
{
  NSString * xmlString = @"<first-release-date></first-release-date>";
  
  // Do your test for the <first-release-date/> element
}
- (void) testFirstReleaseDate2
{
  NSString * xmlString = @"<first-release-date>1920</first-release-date>";
  
  // Do your test for the <first-release-date/> element
}
- (void) testWorkList0
{
  NSString * xmlString = @"<work-list count=\"9\">\n  <work id=\"339ed331-2bdf-3208-850e-c86095ba9c23\">\n    <title>One</title>\n  </work>\n  <work id=\"3adefdb4-d787-3d09-a288-14eaee8d637d\">\n    <title>3 on Duplicate</title>\n  </work>\n  <work id=\"493c57fd-b85c-3a90-9129-b2a99c48095c\">\n    <title>Oh, I\'m sorry! Did I break your concentration? (Jules)</title>\n  </work>\n  <work id=\"580b213e-3537-30da-ba5d-78228aeb66ba\">\n    <title>test11</title>\n  </work>\n  <work id=\"6e83781f-a84c-3674-9948-c7951bea0dc0\">\n    <title>test1</title>\n  </work>\n  <work id=\"895704ca-b6d3-374f-aa98-56fbea9643a2\">\n    <title>Track 1</title>\n  </work>\n  <work id=\"a653cd7a-787f-425f-9b54-c254733e3ebb\">\n    <title>test\342\200\246</title>\n  </work>\n  <work id=\"c18dc2be-0312-3dad-a1ca-7c7989e887e8\">\n    <title>Signature Test (Johan speaking)</title>\n  </work>\n  <work id=\"cb9dc791-0c74-3c57-868b-341b074973f4\">\n    <title>Track 1</title>\n  </work>\n</work-list>";
  
  // Do your test for the <work-list/> element
}
- (void) testScript0
{
  NSString * xmlString = @"<script>Latn</script>";
  
  // Do your test for the <script/> element
}
- (void) testScript1
{
  NSString * xmlString = @"<script>Latn</script>";
  
  // Do your test for the <script/> element
}
- (void) testSortName0
{
  NSString * xmlString = @"<sort-name>MusicBrainz Test Artist</sort-name>";
  
  // Do your test for the <sort-name/> element
}

- (void) testMetadata0
{
  NSString * xmlString = @"<metadata xmlns=\"http://musicbrainz.org/ns/mmd-2.0#\">\n  <artist type=\"Other\" id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\">\n    <name>MusicBrainz Test Artist</name>\n    <sort-name>MusicBrainz Test Artist</sort-name>\n    <disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation>\n    <life-span>\n      <begin>1001-01-01</begin>\n      <end>1098-12-31</end>\n      <ended>true</ended>\n    </life-span>\n    <alias-list count=\"12\">\n      <alias sort-name=\"MB Test Artist\">MB Test Artist</alias>\n      <alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias>\n      <alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias>\n      <alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias>\n      <alias sort-name=\"Qwlghm\">Qwlghm</alias>\n      <alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias>\n      <alias sort-name=\"Testing Artist\">Testing Artist</alias>\n      <alias sort-name=\"Testings Artist\">Testings Artist</alias>\n      <alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias>\n      <alias sort-name=\"testalias\">testalias</alias>\n      <alias sort-name=\"yatta!\">yatta!</alias>\n      <alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias>\n    </alias-list>\n    <recording-list count=\"20\">\n      <recording id=\"01f88fa8-7bd5-402f-8d6f-65b62480ef3f\">\n        <title>3 on Duplicate</title>\n        <length>180000</length>\n        <disambiguation>test_</disambiguation>\n      </recording>\n      <recording id=\"0fe39742-f4ca-49ef-8281-80946564cf44\">\n        <title>Oh, I\'m sorry! Did I break your concentration? (Jules)</title>\n        <length>482933</length>\n      </recording>\n      <recording id=\"2cfac6a6-cd1d-415a-97d2-71c881169235\">\n        <title>One</title>\n        <length>24306</length>\n      </recording>\n      <recording id=\"41de7ed6-2f97-4a01-90f8-28f721e37cb2\">\n        <title>test3</title>\n        <length>1346</length>\n      </recording>\n      <recording id=\"59a408a8-802d-41ee-a228-5e52a86a28b8\">\n        <title>Signature Test (Johan speaking)</title>\n        <length>604666</length>\n      </recording>\n      <recording id=\"5aed82a7-1da6-4e57-a3be-3e84da727d73\">\n        <title>taesting blah-blah ss aa \303\266</title>\n      </recording>\n      <recording id=\"5b2d7a8c-da27-460d-b491-34f66e3b7ba5\">\n        <title>License Placeholder</title>\n      </recording>\n      <recording id=\"6238b8f4-7d04-4ff7-a4ed-86e4b85860bd\">\n        <title>track #2</title>\n      </recording>\n      <recording id=\"6bccbe96-2801-410d-949d-b101bb393d59\">\n        <title>te.. aw forget it</title>\n        <length>13</length>\n      </recording>\n      <recording id=\"7362b9e3-e12d-4bbe-bb6e-c94be47950eb\">\n        <title>Track 1</title>\n        <length>1457586</length>\n      </recording>\n      <recording id=\"74df6277-36ea-4077-8a34-a3328760d0cb\">\n        <title>%track</title>\n        <length>36059000</length>\n        <disambiguation>test</disambiguation>\n      </recording>\n      <recording id=\"7be53912-f01d-4422-97d1-16ad63c24816\">\n        <title>his floor</title>\n        <length>83000</length>\n      </recording>\n      <recording id=\"7cd3e324-1be9-4026-a9cb-b783c474c132\">\n        <title>test</title>\n      </recording>\n      <recording id=\"8a80f386-c321-43d0-b289-368d8df83127\">\n        <title>test2</title>\n        <length>1346</length>\n      </recording>\n      <recording id=\"9a8168c1-7475-42ea-89e5-ec306b660b6c\">\n        <title>Please Mister Nagios</title>\n      </recording>\n      <recording id=\"a2af846a-93a1-4ea8-ab36-0ef005209bd1\">\n        <title>asdfdsf</title>\n      </recording>\n      <recording id=\"c34260fc-8b4c-4ce6-a0dd-9001c05ee029\">\n        <title>test11</title>\n      </recording>\n      <recording id=\"e7e0cb25-ee2d-4cb9-85fe-a2a9d213f20c\">\n        <title>test1</title>\n        <length>1346</length>\n      </recording>\n      <recording id=\"fbae3d07-69c3-4f00-a1ef-c99f0da54127\">\n        <title>track #1</title>\n      </recording>\n      <recording id=\"fd4d253f-ea0f-4ba3-8e18-d861e49b06ac\">\n        <title>\330\250\330\247\331\204\330\263\331\203\331\210\330\252 (\330\261\331\212\331\205\331\203\330\263)</title>\n        <length>234000</length>\n      </recording>\n    </recording-list>\n    <release-list count=\"3\">\n      <release id=\"1735e086-462e-42c3-b615-eebbd5e9f352\">\n        <title>Nagios Check Release</title>\n        <status>Pseudo-Release</status>\n        <quality>normal</quality>\n        <text-representation>\n          <language>eng</language>\n          <script>Latn</script>\n        </text-representation>\n        <date>1920</date>\n        <medium-list count=\"0\"></medium-list>\n      </release>\n      <release id=\"72cf3c87-d97d-49cc-8781-661ad3580091\">\n        <title>TEST</title>\n        <quality>normal</quality>\n        <medium-list count=\"0\"></medium-list>\n      </release>\n      <release id=\"a9d8b538-c20a-4025-aea1-5530d616a20a\">\n        <title>License Placeholder</title>\n        <status>Official</status>\n        <packaging>None</packaging>\n        <quality>normal</quality>\n        <text-representation>\n          <language>eng</language>\n          <script>Latn</script>\n        </text-representation>\n        <date>2011-12-09</date>\n        <country>XW</country>\n        <medium-list count=\"0\"></medium-list>\n      </release>\n    </release-list>\n    <release-group-list count=\"3\">\n      <release-group type=\"Other\" id=\"7f1c3043-e164-464a-9131-10ac49011fab\">\n        <title>License Placeholder</title>\n        <first-release-date>2011-12-09</first-release-date>\n        <primary-type>Other</primary-type>\n      </release-group>\n      <release-group id=\"da7b4220-4c8b-498b-bf78-5a035e445dd3\">\n        <title>TEST</title>\n        <first-release-date></first-release-date>\n      </release-group>\n      <release-group type=\"Other\" id=\"e916d4bf-8e8f-3107-ab4a-4c3774e23990\">\n        <title>Nagios Check Release</title>\n        <first-release-date>1920</first-release-date>\n        <primary-type>Other</primary-type>\n      </release-group>\n    </release-group-list>\n    <work-list count=\"9\">\n      <work id=\"339ed331-2bdf-3208-850e-c86095ba9c23\">\n        <title>One</title>\n      </work>\n      <work id=\"3adefdb4-d787-3d09-a288-14eaee8d637d\">\n        <title>3 on Duplicate</title>\n      </work>\n      <work id=\"493c57fd-b85c-3a90-9129-b2a99c48095c\">\n        <title>Oh, I\'m sorry! Did I break your concentration? (Jules)</title>\n      </work>\n      <work id=\"580b213e-3537-30da-ba5d-78228aeb66ba\">\n        <title>test11</title>\n      </work>\n      <work id=\"6e83781f-a84c-3674-9948-c7951bea0dc0\">\n        <title>test1</title>\n      </work>\n      <work id=\"895704ca-b6d3-374f-aa98-56fbea9643a2\">\n        <title>Track 1</title>\n      </work>\n      <work id=\"a653cd7a-787f-425f-9b54-c254733e3ebb\">\n        <title>test\342\200\246</title>\n      </work>\n      <work id=\"c18dc2be-0312-3dad-a1ca-7c7989e887e8\">\n        <title>Signature Test (Johan speaking)</title>\n      </work>\n      <work id=\"cb9dc791-0c74-3c57-868b-341b074973f4\">\n        <title>Track 1</title>\n      </work>\n    </work-list>\n    <tag-list>\n      <tag count=\"1\">\n        <name>another tag</name>\n      </tag>\n      <tag count=\"1\">\n        <name>for testing</name>\n      </tag>\n      <tag count=\"3\">\n        <name>moose</name>\n      </tag>\n      <tag count=\"1\">\n        <name>musicbrainz</name>\n      </tag>\n      <tag count=\"1\">\n        <name>musicbrainz test artist</name>\n      </tag>\n      <tag count=\"1\">\n        <name>special purpose artist</name>\n      </tag>\n      <tag count=\"1\">\n        <name>special purpose musicbrainz</name>\n      </tag>\n      <tag count=\"5\">\n        <name>test</name>\n      </tag>\n      <tag count=\"1\">\n        <name>test metal</name>\n      </tag>\n      <tag count=\"2\">\n        <name>test tag</name>\n      </tag>\n      <tag count=\"1\">\n        <name>test2</name>\n      </tag>\n      <tag count=\"1\">\n        <name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name>\n      </tag>\n    </tag-list>\n    <user-tag-list>\n      <user-tag>\n        <name>test</name>\n      </user-tag>\n    </user-tag-list>\n    <rating votes-count=\"6\">4</rating>\n    <user-rating>4</user-rating>\n  </artist>\n</metadata>";
  
  // Do your test for the <metadata/> element
    
  NSXMLElement * metadata = [[NSXMLElement alloc] initWithXMLString:xmlString error:nil];
  MBMetadata * entity = [MBEntity entityWithElement:metadata];
  NSData * encoded = [NSKeyedArchiver archivedDataWithRootObject:entity];
  MBMetadata * entityToo = [NSKeyedUnarchiver unarchiveObjectWithData:encoded];
  NSData * encodedToo = [NSKeyedArchiver archivedDataWithRootObject:entityToo];
  
  STAssertTrue([encoded isEqualToData:encodedToo], @"Coding failed.");
}
- (void) testRoot
{
NSString * xmlString = @"<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<metadata xmlns=\"http://musicbrainz.org/ns/mmd-2.0#\">\n  <artist type=\"Other\" id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\">\n    <name>MusicBrainz Test Artist</name>\n    <sort-name>MusicBrainz Test Artist</sort-name>\n    <disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation>\n    <life-span>\n      <begin>1001-01-01</begin>\n      <end>1098-12-31</end>\n      <ended>true</ended>\n    </life-span>\n    <alias-list count=\"12\">\n      <alias sort-name=\"MB Test Artist\">MB Test Artist</alias>\n      <alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias>\n      <alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias>\n      <alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias>\n      <alias sort-name=\"Qwlghm\">Qwlghm</alias>\n      <alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias>\n      <alias sort-name=\"Testing Artist\">Testing Artist</alias>\n      <alias sort-name=\"Testings Artist\">Testings Artist</alias>\n      <alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias>\n      <alias sort-name=\"testalias\">testalias</alias>\n      <alias sort-name=\"yatta!\">yatta!</alias>\n      <alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias>\n    </alias-list>\n    <recording-list count=\"20\">\n      <recording id=\"01f88fa8-7bd5-402f-8d6f-65b62480ef3f\">\n        <title>3 on Duplicate</title>\n        <length>180000</length>\n        <disambiguation>test_</disambiguation>\n      </recording>\n      <recording id=\"0fe39742-f4ca-49ef-8281-80946564cf44\">\n        <title>Oh, I\'m sorry! Did I break your concentration? (Jules)</title>\n        <length>482933</length>\n      </recording>\n      <recording id=\"2cfac6a6-cd1d-415a-97d2-71c881169235\">\n        <title>One</title>\n        <length>24306</length>\n      </recording>\n      <recording id=\"41de7ed6-2f97-4a01-90f8-28f721e37cb2\">\n        <title>test3</title>\n        <length>1346</length>\n      </recording>\n      <recording id=\"59a408a8-802d-41ee-a228-5e52a86a28b8\">\n        <title>Signature Test (Johan speaking)</title>\n        <length>604666</length>\n      </recording>\n      <recording id=\"5aed82a7-1da6-4e57-a3be-3e84da727d73\">\n        <title>taesting blah-blah ss aa \303\266</title>\n      </recording>\n      <recording id=\"5b2d7a8c-da27-460d-b491-34f66e3b7ba5\">\n        <title>License Placeholder</title>\n      </recording>\n      <recording id=\"6238b8f4-7d04-4ff7-a4ed-86e4b85860bd\">\n        <title>track #2</title>\n      </recording>\n      <recording id=\"6bccbe96-2801-410d-949d-b101bb393d59\">\n        <title>te.. aw forget it</title>\n        <length>13</length>\n      </recording>\n      <recording id=\"7362b9e3-e12d-4bbe-bb6e-c94be47950eb\">\n        <title>Track 1</title>\n        <length>1457586</length>\n      </recording>\n      <recording id=\"74df6277-36ea-4077-8a34-a3328760d0cb\">\n        <title>%track</title>\n        <length>36059000</length>\n        <disambiguation>test</disambiguation>\n      </recording>\n      <recording id=\"7be53912-f01d-4422-97d1-16ad63c24816\">\n        <title>his floor</title>\n        <length>83000</length>\n      </recording>\n      <recording id=\"7cd3e324-1be9-4026-a9cb-b783c474c132\">\n        <title>test</title>\n      </recording>\n      <recording id=\"8a80f386-c321-43d0-b289-368d8df83127\">\n        <title>test2</title>\n        <length>1346</length>\n      </recording>\n      <recording id=\"9a8168c1-7475-42ea-89e5-ec306b660b6c\">\n        <title>Please Mister Nagios</title>\n      </recording>\n      <recording id=\"a2af846a-93a1-4ea8-ab36-0ef005209bd1\">\n        <title>asdfdsf</title>\n      </recording>\n      <recording id=\"c34260fc-8b4c-4ce6-a0dd-9001c05ee029\">\n        <title>test11</title>\n      </recording>\n      <recording id=\"e7e0cb25-ee2d-4cb9-85fe-a2a9d213f20c\">\n        <title>test1</title>\n        <length>1346</length>\n      </recording>\n      <recording id=\"fbae3d07-69c3-4f00-a1ef-c99f0da54127\">\n        <title>track #1</title>\n      </recording>\n      <recording id=\"fd4d253f-ea0f-4ba3-8e18-d861e49b06ac\">\n        <title>\330\250\330\247\331\204\330\263\331\203\331\210\330\252 (\330\261\331\212\331\205\331\203\330\263)</title>\n        <length>234000</length>\n      </recording>\n    </recording-list>\n    <release-list count=\"3\">\n      <release id=\"1735e086-462e-42c3-b615-eebbd5e9f352\">\n        <title>Nagios Check Release</title>\n        <status>Pseudo-Release</status>\n        <quality>normal</quality>\n        <text-representation>\n          <language>eng</language>\n          <script>Latn</script>\n        </text-representation>\n        <date>1920</date>\n        <medium-list count=\"0\"></medium-list>\n      </release>\n      <release id=\"72cf3c87-d97d-49cc-8781-661ad3580091\">\n        <title>TEST</title>\n        <quality>normal</quality>\n        <medium-list count=\"0\"></medium-list>\n      </release>\n      <release id=\"a9d8b538-c20a-4025-aea1-5530d616a20a\">\n        <title>License Placeholder</title>\n        <status>Official</status>\n        <packaging>None</packaging>\n        <quality>normal</quality>\n        <text-representation>\n          <language>eng</language>\n          <script>Latn</script>\n        </text-representation>\n        <date>2011-12-09</date>\n        <country>XW</country>\n        <medium-list count=\"0\"></medium-list>\n      </release>\n    </release-list>\n    <release-group-list count=\"3\">\n      <release-group type=\"Other\" id=\"7f1c3043-e164-464a-9131-10ac49011fab\">\n        <title>License Placeholder</title>\n        <first-release-date>2011-12-09</first-release-date>\n        <primary-type>Other</primary-type>\n      </release-group>\n      <release-group id=\"da7b4220-4c8b-498b-bf78-5a035e445dd3\">\n        <title>TEST</title>\n        <first-release-date></first-release-date>\n      </release-group>\n      <release-group type=\"Other\" id=\"e916d4bf-8e8f-3107-ab4a-4c3774e23990\">\n        <title>Nagios Check Release</title>\n        <first-release-date>1920</first-release-date>\n        <primary-type>Other</primary-type>\n      </release-group>\n    </release-group-list>\n    <work-list count=\"9\">\n      <work id=\"339ed331-2bdf-3208-850e-c86095ba9c23\">\n        <title>One</title>\n      </work>\n      <work id=\"3adefdb4-d787-3d09-a288-14eaee8d637d\">\n        <title>3 on Duplicate</title>\n      </work>\n      <work id=\"493c57fd-b85c-3a90-9129-b2a99c48095c\">\n        <title>Oh, I\'m sorry! Did I break your concentration? (Jules)</title>\n      </work>\n      <work id=\"580b213e-3537-30da-ba5d-78228aeb66ba\">\n        <title>test11</title>\n      </work>\n      <work id=\"6e83781f-a84c-3674-9948-c7951bea0dc0\">\n        <title>test1</title>\n      </work>\n      <work id=\"895704ca-b6d3-374f-aa98-56fbea9643a2\">\n        <title>Track 1</title>\n      </work>\n      <work id=\"a653cd7a-787f-425f-9b54-c254733e3ebb\">\n        <title>test\342\200\246</title>\n      </work>\n      <work id=\"c18dc2be-0312-3dad-a1ca-7c7989e887e8\">\n        <title>Signature Test (Johan speaking)</title>\n      </work>\n      <work id=\"cb9dc791-0c74-3c57-868b-341b074973f4\">\n        <title>Track 1</title>\n      </work>\n    </work-list>\n    <tag-list>\n      <tag count=\"1\">\n        <name>another tag</name>\n      </tag>\n      <tag count=\"1\">\n        <name>for testing</name>\n      </tag>\n      <tag count=\"3\">\n        <name>moose</name>\n      </tag>\n      <tag count=\"1\">\n        <name>musicbrainz</name>\n      </tag>\n      <tag count=\"1\">\n        <name>musicbrainz test artist</name>\n      </tag>\n      <tag count=\"1\">\n        <name>special purpose artist</name>\n      </tag>\n      <tag count=\"1\">\n        <name>special purpose musicbrainz</name>\n      </tag>\n      <tag count=\"5\">\n        <name>test</name>\n      </tag>\n      <tag count=\"1\">\n        <name>test metal</name>\n      </tag>\n      <tag count=\"2\">\n        <name>test tag</name>\n      </tag>\n      <tag count=\"1\">\n        <name>test2</name>\n      </tag>\n      <tag count=\"1\">\n        <name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name>\n      </tag>\n    </tag-list>\n    <user-tag-list>\n      <user-tag>\n        <name>test</name>\n      </user-tag>\n    </user-tag-list>\n    <rating votes-count=\"6\">4</rating>\n    <user-rating>4</user-rating>\n  </artist>\n</metadata>";

// Do your test for the <?xml/> element
}
- (void) testRating0
{
  NSString * xmlString = @"<rating votes-count=\"6\">4</rating>";
  
  // Do your test for the <rating/> element
}
- (void) testQuality0
{
  NSString * xmlString = @"<quality>normal</quality>";
  
  // Do your test for the <quality/> element
}
- (void) testQuality1
{
  NSString * xmlString = @"<quality>normal</quality>";
  
  // Do your test for the <quality/> element
}
- (void) testQuality2
{
  NSString * xmlString = @"<quality>normal</quality>";
  
  // Do your test for the <quality/> element
}
- (void) testTag0
{
  NSString * xmlString = @"<tag count=\"1\">\n  <name>another tag</name>\n</tag>";
  
  // Do your test for the <tag/> element
}
- (void) testTag1
{
  NSString * xmlString = @"<tag count=\"1\">\n  <name>for testing</name>\n</tag>";
  
  // Do your test for the <tag/> element
}
- (void) testTag2
{
  NSString * xmlString = @"<tag count=\"3\">\n  <name>moose</name>\n</tag>";
  
  // Do your test for the <tag/> element
}
- (void) testTag3
{
  NSString * xmlString = @"<tag count=\"1\">\n  <name>musicbrainz</name>\n</tag>";
  
  // Do your test for the <tag/> element
}
- (void) testTag4
{
  NSString * xmlString = @"<tag count=\"1\">\n  <name>musicbrainz test artist</name>\n</tag>";
  
  // Do your test for the <tag/> element
}
- (void) testTag5
{
  NSString * xmlString = @"<tag count=\"1\">\n  <name>special purpose artist</name>\n</tag>";
  
  // Do your test for the <tag/> element
}
- (void) testTag6
{
  NSString * xmlString = @"<tag count=\"1\">\n  <name>special purpose musicbrainz</name>\n</tag>";
  
  // Do your test for the <tag/> element
}
- (void) testTag7
{
  NSString * xmlString = @"<tag count=\"5\">\n  <name>test</name>\n</tag>";
  
  // Do your test for the <tag/> element
}
- (void) testTag8
{
  NSString * xmlString = @"<tag count=\"1\">\n  <name>test metal</name>\n</tag>";
  
  // Do your test for the <tag/> element
}
- (void) testTag9
{
  NSString * xmlString = @"<tag count=\"2\">\n  <name>test tag</name>\n</tag>";
  
  // Do your test for the <tag/> element
}
- (void) testTaga
{
  NSString * xmlString = @"<tag count=\"1\">\n  <name>test2</name>\n</tag>";
  
  // Do your test for the <tag/> element
}
- (void) testTagb
{
  NSString * xmlString = @"<tag count=\"1\">\n  <name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name>\n</tag>";
  
  // Do your test for the <tag/> element
}
- (void) testEnd0
{
  NSString * xmlString = @"<end>1098-12-31</end>";
  
  // Do your test for the <end/> element
}
- (void) testDisambiguation0
{
  NSString * xmlString = @"<disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation>";
  
  // Do your test for the <disambiguation/> element
}
- (void) testDisambiguation1
{
  NSString * xmlString = @"<disambiguation>test_</disambiguation>";
  
  // Do your test for the <disambiguation/> element
}
- (void) testDisambiguation2
{
  NSString * xmlString = @"<disambiguation>test</disambiguation>";
  
  // Do your test for the <disambiguation/> element
}
- (void) testLength0
{
  NSString * xmlString = @"<length>180000</length>";
  
  // Do your test for the <length/> element
}
- (void) testLength1
{
  NSString * xmlString = @"<length>482933</length>";
  
  // Do your test for the <length/> element
}
- (void) testLength2
{
  NSString * xmlString = @"<length>24306</length>";
  
  // Do your test for the <length/> element
}
- (void) testLength3
{
  NSString * xmlString = @"<length>1346</length>";
  
  // Do your test for the <length/> element
}
- (void) testLength4
{
  NSString * xmlString = @"<length>604666</length>";
  
  // Do your test for the <length/> element
}
- (void) testLength5
{
  NSString * xmlString = @"<length>13</length>";
  
  // Do your test for the <length/> element
}
- (void) testLength6
{
  NSString * xmlString = @"<length>1457586</length>";
  
  // Do your test for the <length/> element
}
- (void) testLength7
{
  NSString * xmlString = @"<length>36059000</length>";
  
  // Do your test for the <length/> element
}
- (void) testLength8
{
  NSString * xmlString = @"<length>83000</length>";
  
  // Do your test for the <length/> element
}
- (void) testLength9
{
  NSString * xmlString = @"<length>1346</length>";
  
  // Do your test for the <length/> element
}
- (void) testLengtha
{
  NSString * xmlString = @"<length>1346</length>";
  
  // Do your test for the <length/> element
}
- (void) testLengthb
{
  NSString * xmlString = @"<length>234000</length>";
  
  // Do your test for the <length/> element
}
- (void) testTagList0
{
  NSString * xmlString = @"<tag-list>\n  <tag count=\"1\">\n    <name>another tag</name>\n  </tag>\n  <tag count=\"1\">\n    <name>for testing</name>\n  </tag>\n  <tag count=\"3\">\n    <name>moose</name>\n  </tag>\n  <tag count=\"1\">\n    <name>musicbrainz</name>\n  </tag>\n  <tag count=\"1\">\n    <name>musicbrainz test artist</name>\n  </tag>\n  <tag count=\"1\">\n    <name>special purpose artist</name>\n  </tag>\n  <tag count=\"1\">\n    <name>special purpose musicbrainz</name>\n  </tag>\n  <tag count=\"5\">\n    <name>test</name>\n  </tag>\n  <tag count=\"1\">\n    <name>test metal</name>\n  </tag>\n  <tag count=\"2\">\n    <name>test tag</name>\n  </tag>\n  <tag count=\"1\">\n    <name>test2</name>\n  </tag>\n  <tag count=\"1\">\n    <name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name>\n  </tag>\n</tag-list>";
  
  // Do your test for the <tag-list/> element
}
- (void) testPrimaryType0
{
  NSString * xmlString = @"<primary-type>Other</primary-type>";
  
  // Do your test for the <primary-type/> element
}
- (void) testPrimaryType1
{
  NSString * xmlString = @"<primary-type>Other</primary-type>";
  
  // Do your test for the <primary-type/> element
}
- (void) testReleaseGroupList0
{
  NSString * xmlString = @"<release-group-list count=\"3\">\n  <release-group type=\"Other\" id=\"7f1c3043-e164-464a-9131-10ac49011fab\">\n    <title>License Placeholder</title>\n    <first-release-date>2011-12-09</first-release-date>\n    <primary-type>Other</primary-type>\n  </release-group>\n  <release-group id=\"da7b4220-4c8b-498b-bf78-5a035e445dd3\">\n    <title>TEST</title>\n    <first-release-date></first-release-date>\n  </release-group>\n  <release-group type=\"Other\" id=\"e916d4bf-8e8f-3107-ab4a-4c3774e23990\">\n    <title>Nagios Check Release</title>\n    <first-release-date>1920</first-release-date>\n    <primary-type>Other</primary-type>\n  </release-group>\n</release-group-list>";
  
  // Do your test for the <release-group-list/> element
}
- (void) testName0
{
  NSString * xmlString = @"<name>MusicBrainz Test Artist</name>";
  
  // Do your test for the <name/> element
}
- (void) testName1
{
  NSString * xmlString = @"<name>another tag</name>";
  
  // Do your test for the <name/> element
}
- (void) testName2
{
  NSString * xmlString = @"<name>for testing</name>";
  
  // Do your test for the <name/> element
}
- (void) testName3
{
  NSString * xmlString = @"<name>moose</name>";
  
  // Do your test for the <name/> element
}
- (void) testName4
{
  NSString * xmlString = @"<name>musicbrainz</name>";
  
  // Do your test for the <name/> element
}
- (void) testName5
{
  NSString * xmlString = @"<name>musicbrainz test artist</name>";
  
  // Do your test for the <name/> element
}
- (void) testName6
{
  NSString * xmlString = @"<name>special purpose artist</name>";
  
  // Do your test for the <name/> element
}
- (void) testName7
{
  NSString * xmlString = @"<name>special purpose musicbrainz</name>";
  
  // Do your test for the <name/> element
}
- (void) testName8
{
  NSString * xmlString = @"<name>test</name>";
  
  // Do your test for the <name/> element
}
- (void) testName9
{
  NSString * xmlString = @"<name>test metal</name>";
  
  // Do your test for the <name/> element
}
- (void) testNamea
{
  NSString * xmlString = @"<name>test tag</name>";
  
  // Do your test for the <name/> element
}
- (void) testNameb
{
  NSString * xmlString = @"<name>test2</name>";
  
  // Do your test for the <name/> element
}
- (void) testNamec
{
  NSString * xmlString = @"<name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name>";
  
  // Do your test for the <name/> element
}
- (void) testNamed
{
  NSString * xmlString = @"<name>test</name>";
  
  // Do your test for the <name/> element
}
- (void) testRecording0
{
  NSString * xmlString = @"<recording id=\"01f88fa8-7bd5-402f-8d6f-65b62480ef3f\">\n  <title>3 on Duplicate</title>\n  <length>180000</length>\n  <disambiguation>test_</disambiguation>\n</recording>";
  
  // Do your test for the <recording/> element
}
- (void) testRecording1
{
  NSString * xmlString = @"<recording id=\"0fe39742-f4ca-49ef-8281-80946564cf44\">\n  <title>Oh, I\'m sorry! Did I break your concentration? (Jules)</title>\n  <length>482933</length>\n</recording>";
  
  // Do your test for the <recording/> element
}
- (void) testRecording2
{
  NSString * xmlString = @"<recording id=\"2cfac6a6-cd1d-415a-97d2-71c881169235\">\n  <title>One</title>\n  <length>24306</length>\n</recording>";
  
  // Do your test for the <recording/> element
}
- (void) testRecording3
{
  NSString * xmlString = @"<recording id=\"41de7ed6-2f97-4a01-90f8-28f721e37cb2\">\n  <title>test3</title>\n  <length>1346</length>\n</recording>";
  
  // Do your test for the <recording/> element
}
- (void) testRecording4
{
  NSString * xmlString = @"<recording id=\"59a408a8-802d-41ee-a228-5e52a86a28b8\">\n  <title>Signature Test (Johan speaking)</title>\n  <length>604666</length>\n</recording>";
  
  // Do your test for the <recording/> element
}
- (void) testRecording5
{
  NSString * xmlString = @"<recording id=\"5aed82a7-1da6-4e57-a3be-3e84da727d73\">\n  <title>taesting blah-blah ss aa \303\266</title>\n</recording>";
  
  // Do your test for the <recording/> element
}
- (void) testRecording6
{
  NSString * xmlString = @"<recording id=\"5b2d7a8c-da27-460d-b491-34f66e3b7ba5\">\n  <title>License Placeholder</title>\n</recording>";
  
  // Do your test for the <recording/> element
}
- (void) testRecording7
{
  NSString * xmlString = @"<recording id=\"6238b8f4-7d04-4ff7-a4ed-86e4b85860bd\">\n  <title>track #2</title>\n</recording>";
  
  // Do your test for the <recording/> element
}
- (void) testRecording8
{
  NSString * xmlString = @"<recording id=\"6bccbe96-2801-410d-949d-b101bb393d59\">\n  <title>te.. aw forget it</title>\n  <length>13</length>\n</recording>";
  
  // Do your test for the <recording/> element
}
- (void) testRecording9
{
  NSString * xmlString = @"<recording id=\"7362b9e3-e12d-4bbe-bb6e-c94be47950eb\">\n  <title>Track 1</title>\n  <length>1457586</length>\n</recording>";
  
  // Do your test for the <recording/> element
}
- (void) testRecordinga
{
  NSString * xmlString = @"<recording id=\"74df6277-36ea-4077-8a34-a3328760d0cb\">\n  <title>%track</title>\n  <length>36059000</length>\n  <disambiguation>test</disambiguation>\n</recording>";
  
  // Do your test for the <recording/> element
}
- (void) testRecordingb
{
  NSString * xmlString = @"<recording id=\"7be53912-f01d-4422-97d1-16ad63c24816\">\n  <title>his floor</title>\n  <length>83000</length>\n</recording>";
  
  // Do your test for the <recording/> element
}
- (void) testRecordingc
{
  NSString * xmlString = @"<recording id=\"7cd3e324-1be9-4026-a9cb-b783c474c132\">\n  <title>test</title>\n</recording>";
  
  // Do your test for the <recording/> element
}
- (void) testRecordingd
{
  NSString * xmlString = @"<recording id=\"8a80f386-c321-43d0-b289-368d8df83127\">\n  <title>test2</title>\n  <length>1346</length>\n</recording>";
  
  // Do your test for the <recording/> element
}
- (void) testRecordinge
{
  NSString * xmlString = @"<recording id=\"9a8168c1-7475-42ea-89e5-ec306b660b6c\">\n  <title>Please Mister Nagios</title>\n</recording>";
  
  // Do your test for the <recording/> element
}
- (void) testRecordingf
{
  NSString * xmlString = @"<recording id=\"a2af846a-93a1-4ea8-ab36-0ef005209bd1\">\n  <title>asdfdsf</title>\n</recording>";
  
  // Do your test for the <recording/> element
}
- (void) testRecording10
{
  NSString * xmlString = @"<recording id=\"c34260fc-8b4c-4ce6-a0dd-9001c05ee029\">\n  <title>test11</title>\n</recording>";
  
  // Do your test for the <recording/> element
}
- (void) testRecording11
{
  NSString * xmlString = @"<recording id=\"e7e0cb25-ee2d-4cb9-85fe-a2a9d213f20c\">\n  <title>test1</title>\n  <length>1346</length>\n</recording>";
  
  // Do your test for the <recording/> element
}
- (void) testRecording12
{
  NSString * xmlString = @"<recording id=\"fbae3d07-69c3-4f00-a1ef-c99f0da54127\">\n  <title>track #1</title>\n</recording>";
  
  // Do your test for the <recording/> element
}
- (void) testRecording13
{
  NSString * xmlString = @"<recording id=\"fd4d253f-ea0f-4ba3-8e18-d861e49b06ac\">\n  <title>\330\250\330\247\331\204\330\263\331\203\331\210\330\252 (\330\261\331\212\331\205\331\203\330\263)</title>\n  <length>234000</length>\n</recording>";
  
  // Do your test for the <recording/> element
}
- (void) testPackaging0
{
  NSString * xmlString = @"<packaging>None</packaging>";
  
  // Do your test for the <packaging/> element
}
- (void) testEnded0
{
  NSString * xmlString = @"<ended>true</ended>";
  
  // Do your test for the <ended/> element
}
- (void) testUserRating0
{
  NSString * xmlString = @"<user-rating>4</user-rating>";
  
  // Do your test for the <user-rating/> element
}
- (void) testDate0
{
  NSString * xmlString = @"<date>1920</date>";
  
  // Do your test for the <date/> element
}
- (void) testDate1
{
  NSString * xmlString = @"<date>2011-12-09</date>";
  
  // Do your test for the <date/> element
}
- (void) testWork0
{
  NSString * xmlString = @"<work id=\"339ed331-2bdf-3208-850e-c86095ba9c23\">\n  <title>One</title>\n</work>";
  
  // Do your test for the <work/> element
}
- (void) testWork1
{
  NSString * xmlString = @"<work id=\"3adefdb4-d787-3d09-a288-14eaee8d637d\">\n  <title>3 on Duplicate</title>\n</work>";
  
  // Do your test for the <work/> element
}
- (void) testWork2
{
  NSString * xmlString = @"<work id=\"493c57fd-b85c-3a90-9129-b2a99c48095c\">\n  <title>Oh, I\'m sorry! Did I break your concentration? (Jules)</title>\n</work>";
  
  // Do your test for the <work/> element
}
- (void) testWork3
{
  NSString * xmlString = @"<work id=\"580b213e-3537-30da-ba5d-78228aeb66ba\">\n  <title>test11</title>\n</work>";
  
  // Do your test for the <work/> element
}
- (void) testWork4
{
  NSString * xmlString = @"<work id=\"6e83781f-a84c-3674-9948-c7951bea0dc0\">\n  <title>test1</title>\n</work>";
  
  // Do your test for the <work/> element
}
- (void) testWork5
{
  NSString * xmlString = @"<work id=\"895704ca-b6d3-374f-aa98-56fbea9643a2\">\n  <title>Track 1</title>\n</work>";
  
  // Do your test for the <work/> element
}
- (void) testWork6
{
  NSString * xmlString = @"<work id=\"a653cd7a-787f-425f-9b54-c254733e3ebb\">\n  <title>test\342\200\246</title>\n</work>";
  
  // Do your test for the <work/> element
}
- (void) testWork7
{
  NSString * xmlString = @"<work id=\"c18dc2be-0312-3dad-a1ca-7c7989e887e8\">\n  <title>Signature Test (Johan speaking)</title>\n</work>";
  
  // Do your test for the <work/> element
}
- (void) testWork8
{
  NSString * xmlString = @"<work id=\"cb9dc791-0c74-3c57-868b-341b074973f4\">\n  <title>Track 1</title>\n</work>";
  
  // Do your test for the <work/> element
}
- (void) testAlias0
{
  NSString * xmlString = @"<alias sort-name=\"MB Test Artist\">MB Test Artist</alias>";
  
  // Do your test for the <alias/> element
}
- (void) testAlias1
{
  NSString * xmlString = @"<alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias>";
  
  // Do your test for the <alias/> element
}
- (void) testAlias2
{
  NSString * xmlString = @"<alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias>";
  
  // Do your test for the <alias/> element
}
- (void) testAlias3
{
  NSString * xmlString = @"<alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias>";
  
  // Do your test for the <alias/> element
}
- (void) testAlias4
{
  NSString * xmlString = @"<alias sort-name=\"Qwlghm\">Qwlghm</alias>";
  
  // Do your test for the <alias/> element
}
- (void) testAlias5
{
  NSString * xmlString = @"<alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias>";
  
  // Do your test for the <alias/> element
}
- (void) testAlias6
{
  NSString * xmlString = @"<alias sort-name=\"Testing Artist\">Testing Artist</alias>";
  
  // Do your test for the <alias/> element
}
- (void) testAlias7
{
  NSString * xmlString = @"<alias sort-name=\"Testings Artist\">Testings Artist</alias>";
  
  // Do your test for the <alias/> element
}
- (void) testAlias8
{
  NSString * xmlString = @"<alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias>";
  
  // Do your test for the <alias/> element
}
- (void) testAlias9
{
  NSString * xmlString = @"<alias sort-name=\"testalias\">testalias</alias>";
  
  // Do your test for the <alias/> element
}
- (void) testAliasa
{
  NSString * xmlString = @"<alias sort-name=\"yatta!\">yatta!</alias>";
  
  // Do your test for the <alias/> element
}
- (void) testAliasb
{
  NSString * xmlString = @"<alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias>";
  
  // Do your test for the <alias/> element
}
- (void) testCountry0
{
  NSString * xmlString = @"<country>XW</country>";
  
  // Do your test for the <country/> element
}
- (void) testStatus0
{
  NSString * xmlString = @"<status>Pseudo-Release</status>";
  
  // Do your test for the <status/> element
}
- (void) testStatus1
{
  NSString * xmlString = @"<status>Official</status>";
  
  // Do your test for the <status/> element
}
- (void) testReleaseGroup0
{
  NSString * xmlString = @"<release-group type=\"Other\" id=\"7f1c3043-e164-464a-9131-10ac49011fab\">\n  <title>License Placeholder</title>\n  <first-release-date>2011-12-09</first-release-date>\n  <primary-type>Other</primary-type>\n</release-group>";
  
  // Do your test for the <release-group/> element
}
- (void) testReleaseGroup1
{
  NSString * xmlString = @"<release-group id=\"da7b4220-4c8b-498b-bf78-5a035e445dd3\">\n  <title>TEST</title>\n  <first-release-date></first-release-date>\n</release-group>";
  
  // Do your test for the <release-group/> element
}
- (void) testReleaseGroup2
{
  NSString * xmlString = @"<release-group type=\"Other\" id=\"e916d4bf-8e8f-3107-ab4a-4c3774e23990\">\n  <title>Nagios Check Release</title>\n  <first-release-date>1920</first-release-date>\n  <primary-type>Other</primary-type>\n</release-group>";
  
  // Do your test for the <release-group/> element
}
- (void) testMediumList0
{
  NSString * xmlString = @"<medium-list count=\"0\"></medium-list>";
  
  // Do your test for the <medium-list/> element
}
- (void) testMediumList1
{
  NSString * xmlString = @"<medium-list count=\"0\"></medium-list>";
  
  // Do your test for the <medium-list/> element
}
- (void) testMediumList2
{
  NSString * xmlString = @"<medium-list count=\"0\"></medium-list>";
  
  // Do your test for the <medium-list/> element
}
- (void) testRelease0
{
  NSString * xmlString = @"<release id=\"1735e086-462e-42c3-b615-eebbd5e9f352\">\n  <title>Nagios Check Release</title>\n  <status>Pseudo-Release</status>\n  <quality>normal</quality>\n  <text-representation>\n    <language>eng</language>\n    <script>Latn</script>\n  </text-representation>\n  <date>1920</date>\n  <medium-list count=\"0\"></medium-list>\n</release>";
  
  // Do your test for the <release/> element
}
- (void) testRelease1
{
  NSString * xmlString = @"<release id=\"72cf3c87-d97d-49cc-8781-661ad3580091\">\n  <title>TEST</title>\n  <quality>normal</quality>\n  <medium-list count=\"0\"></medium-list>\n</release>";
  
  // Do your test for the <release/> element
}
- (void) testRelease2
{
  NSString * xmlString = @"<release id=\"a9d8b538-c20a-4025-aea1-5530d616a20a\">\n  <title>License Placeholder</title>\n  <status>Official</status>\n  <packaging>None</packaging>\n  <quality>normal</quality>\n  <text-representation>\n    <language>eng</language>\n    <script>Latn</script>\n  </text-representation>\n  <date>2011-12-09</date>\n  <country>XW</country>\n  <medium-list count=\"0\"></medium-list>\n</release>";
  
  // Do your test for the <release/> element
}
- (void) testUserTag0
{
  NSString * xmlString = @"<user-tag>\n  <name>test</name>\n</user-tag>";
  
  // Do your test for the <user-tag/> element
}
- (void) testArtist0
{
  NSString * xmlString = @"<artist type=\"Other\" id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\">\n  <name>MusicBrainz Test Artist</name>\n  <sort-name>MusicBrainz Test Artist</sort-name>\n  <disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation>\n  <life-span>\n    <begin>1001-01-01</begin>\n    <end>1098-12-31</end>\n    <ended>true</ended>\n  </life-span>\n  <alias-list count=\"12\">\n    <alias sort-name=\"MB Test Artist\">MB Test Artist</alias>\n    <alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias>\n    <alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias>\n    <alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias>\n    <alias sort-name=\"Qwlghm\">Qwlghm</alias>\n    <alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias>\n    <alias sort-name=\"Testing Artist\">Testing Artist</alias>\n    <alias sort-name=\"Testings Artist\">Testings Artist</alias>\n    <alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias>\n    <alias sort-name=\"testalias\">testalias</alias>\n    <alias sort-name=\"yatta!\">yatta!</alias>\n    <alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias>\n  </alias-list>\n  <recording-list count=\"20\">\n    <recording id=\"01f88fa8-7bd5-402f-8d6f-65b62480ef3f\">\n      <title>3 on Duplicate</title>\n      <length>180000</length>\n      <disambiguation>test_</disambiguation>\n    </recording>\n    <recording id=\"0fe39742-f4ca-49ef-8281-80946564cf44\">\n      <title>Oh, I\'m sorry! Did I break your concentration? (Jules)</title>\n      <length>482933</length>\n    </recording>\n    <recording id=\"2cfac6a6-cd1d-415a-97d2-71c881169235\">\n      <title>One</title>\n      <length>24306</length>\n    </recording>\n    <recording id=\"41de7ed6-2f97-4a01-90f8-28f721e37cb2\">\n      <title>test3</title>\n      <length>1346</length>\n    </recording>\n    <recording id=\"59a408a8-802d-41ee-a228-5e52a86a28b8\">\n      <title>Signature Test (Johan speaking)</title>\n      <length>604666</length>\n    </recording>\n    <recording id=\"5aed82a7-1da6-4e57-a3be-3e84da727d73\">\n      <title>taesting blah-blah ss aa \303\266</title>\n    </recording>\n    <recording id=\"5b2d7a8c-da27-460d-b491-34f66e3b7ba5\">\n      <title>License Placeholder</title>\n    </recording>\n    <recording id=\"6238b8f4-7d04-4ff7-a4ed-86e4b85860bd\">\n      <title>track #2</title>\n    </recording>\n    <recording id=\"6bccbe96-2801-410d-949d-b101bb393d59\">\n      <title>te.. aw forget it</title>\n      <length>13</length>\n    </recording>\n    <recording id=\"7362b9e3-e12d-4bbe-bb6e-c94be47950eb\">\n      <title>Track 1</title>\n      <length>1457586</length>\n    </recording>\n    <recording id=\"74df6277-36ea-4077-8a34-a3328760d0cb\">\n      <title>%track</title>\n      <length>36059000</length>\n      <disambiguation>test</disambiguation>\n    </recording>\n    <recording id=\"7be53912-f01d-4422-97d1-16ad63c24816\">\n      <title>his floor</title>\n      <length>83000</length>\n    </recording>\n    <recording id=\"7cd3e324-1be9-4026-a9cb-b783c474c132\">\n      <title>test</title>\n    </recording>\n    <recording id=\"8a80f386-c321-43d0-b289-368d8df83127\">\n      <title>test2</title>\n      <length>1346</length>\n    </recording>\n    <recording id=\"9a8168c1-7475-42ea-89e5-ec306b660b6c\">\n      <title>Please Mister Nagios</title>\n    </recording>\n    <recording id=\"a2af846a-93a1-4ea8-ab36-0ef005209bd1\">\n      <title>asdfdsf</title>\n    </recording>\n    <recording id=\"c34260fc-8b4c-4ce6-a0dd-9001c05ee029\">\n      <title>test11</title>\n    </recording>\n    <recording id=\"e7e0cb25-ee2d-4cb9-85fe-a2a9d213f20c\">\n      <title>test1</title>\n      <length>1346</length>\n    </recording>\n    <recording id=\"fbae3d07-69c3-4f00-a1ef-c99f0da54127\">\n      <title>track #1</title>\n    </recording>\n    <recording id=\"fd4d253f-ea0f-4ba3-8e18-d861e49b06ac\">\n      <title>\330\250\330\247\331\204\330\263\331\203\331\210\330\252 (\330\261\331\212\331\205\331\203\330\263)</title>\n      <length>234000</length>\n    </recording>\n  </recording-list>\n  <release-list count=\"3\">\n    <release id=\"1735e086-462e-42c3-b615-eebbd5e9f352\">\n      <title>Nagios Check Release</title>\n      <status>Pseudo-Release</status>\n      <quality>normal</quality>\n      <text-representation>\n        <language>eng</language>\n        <script>Latn</script>\n      </text-representation>\n      <date>1920</date>\n      <medium-list count=\"0\"></medium-list>\n    </release>\n    <release id=\"72cf3c87-d97d-49cc-8781-661ad3580091\">\n      <title>TEST</title>\n      <quality>normal</quality>\n      <medium-list count=\"0\"></medium-list>\n    </release>\n    <release id=\"a9d8b538-c20a-4025-aea1-5530d616a20a\">\n      <title>License Placeholder</title>\n      <status>Official</status>\n      <packaging>None</packaging>\n      <quality>normal</quality>\n      <text-representation>\n        <language>eng</language>\n        <script>Latn</script>\n      </text-representation>\n      <date>2011-12-09</date>\n      <country>XW</country>\n      <medium-list count=\"0\"></medium-list>\n    </release>\n  </release-list>\n  <release-group-list count=\"3\">\n    <release-group type=\"Other\" id=\"7f1c3043-e164-464a-9131-10ac49011fab\">\n      <title>License Placeholder</title>\n      <first-release-date>2011-12-09</first-release-date>\n      <primary-type>Other</primary-type>\n    </release-group>\n    <release-group id=\"da7b4220-4c8b-498b-bf78-5a035e445dd3\">\n      <title>TEST</title>\n      <first-release-date></first-release-date>\n    </release-group>\n    <release-group type=\"Other\" id=\"e916d4bf-8e8f-3107-ab4a-4c3774e23990\">\n      <title>Nagios Check Release</title>\n      <first-release-date>1920</first-release-date>\n      <primary-type>Other</primary-type>\n    </release-group>\n  </release-group-list>\n  <work-list count=\"9\">\n    <work id=\"339ed331-2bdf-3208-850e-c86095ba9c23\">\n      <title>One</title>\n    </work>\n    <work id=\"3adefdb4-d787-3d09-a288-14eaee8d637d\">\n      <title>3 on Duplicate</title>\n    </work>\n    <work id=\"493c57fd-b85c-3a90-9129-b2a99c48095c\">\n      <title>Oh, I\'m sorry! Did I break your concentration? (Jules)</title>\n    </work>\n    <work id=\"580b213e-3537-30da-ba5d-78228aeb66ba\">\n      <title>test11</title>\n    </work>\n    <work id=\"6e83781f-a84c-3674-9948-c7951bea0dc0\">\n      <title>test1</title>\n    </work>\n    <work id=\"895704ca-b6d3-374f-aa98-56fbea9643a2\">\n      <title>Track 1</title>\n    </work>\n    <work id=\"a653cd7a-787f-425f-9b54-c254733e3ebb\">\n      <title>test\342\200\246</title>\n    </work>\n    <work id=\"c18dc2be-0312-3dad-a1ca-7c7989e887e8\">\n      <title>Signature Test (Johan speaking)</title>\n    </work>\n    <work id=\"cb9dc791-0c74-3c57-868b-341b074973f4\">\n      <title>Track 1</title>\n    </work>\n  </work-list>\n  <tag-list>\n    <tag count=\"1\">\n      <name>another tag</name>\n    </tag>\n    <tag count=\"1\">\n      <name>for testing</name>\n    </tag>\n    <tag count=\"3\">\n      <name>moose</name>\n    </tag>\n    <tag count=\"1\">\n      <name>musicbrainz</name>\n    </tag>\n    <tag count=\"1\">\n      <name>musicbrainz test artist</name>\n    </tag>\n    <tag count=\"1\">\n      <name>special purpose artist</name>\n    </tag>\n    <tag count=\"1\">\n      <name>special purpose musicbrainz</name>\n    </tag>\n    <tag count=\"5\">\n      <name>test</name>\n    </tag>\n    <tag count=\"1\">\n      <name>test metal</name>\n    </tag>\n    <tag count=\"2\">\n      <name>test tag</name>\n    </tag>\n    <tag count=\"1\">\n      <name>test2</name>\n    </tag>\n    <tag count=\"1\">\n      <name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name>\n    </tag>\n  </tag-list>\n  <user-tag-list>\n    <user-tag>\n      <name>test</name>\n    </user-tag>\n  </user-tag-list>\n  <rating votes-count=\"6\">4</rating>\n  <user-rating>4</user-rating>\n</artist>";
  
  // Do your test for the <artist/> element
}
- (void) testTitle0
{
  NSString * xmlString = @"<title>3 on Duplicate</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitle1
{
  NSString * xmlString = @"<title>Oh, I\'m sorry! Did I break your concentration? (Jules)</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitle2
{
  NSString * xmlString = @"<title>One</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitle3
{
  NSString * xmlString = @"<title>test3</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitle4
{
  NSString * xmlString = @"<title>Signature Test (Johan speaking)</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitle5
{
  NSString * xmlString = @"<title>taesting blah-blah ss aa \303\266</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitle6
{
  NSString * xmlString = @"<title>License Placeholder</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitle7
{
  NSString * xmlString = @"<title>track #2</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitle8
{
  NSString * xmlString = @"<title>te.. aw forget it</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitle9
{
  NSString * xmlString = @"<title>Track 1</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitlea
{
  NSString * xmlString = @"<title>%track</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitleb
{
  NSString * xmlString = @"<title>his floor</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitlec
{
  NSString * xmlString = @"<title>test</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitled
{
  NSString * xmlString = @"<title>test2</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitlee
{
  NSString * xmlString = @"<title>Please Mister Nagios</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitlef
{
  NSString * xmlString = @"<title>asdfdsf</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitle10
{
  NSString * xmlString = @"<title>test11</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitle11
{
  NSString * xmlString = @"<title>test1</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitle12
{
  NSString * xmlString = @"<title>track #1</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitle13
{
  NSString * xmlString = @"<title>\330\250\330\247\331\204\330\263\331\203\331\210\330\252 (\330\261\331\212\331\205\331\203\330\263)</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitle14
{
  NSString * xmlString = @"<title>Nagios Check Release</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitle15
{
  NSString * xmlString = @"<title>TEST</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitle16
{
  NSString * xmlString = @"<title>License Placeholder</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitle17
{
  NSString * xmlString = @"<title>License Placeholder</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitle18
{
  NSString * xmlString = @"<title>TEST</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitle19
{
  NSString * xmlString = @"<title>Nagios Check Release</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitle1a
{
  NSString * xmlString = @"<title>One</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitle1b
{
  NSString * xmlString = @"<title>3 on Duplicate</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitle1c
{
  NSString * xmlString = @"<title>Oh, I\'m sorry! Did I break your concentration? (Jules)</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitle1d
{
  NSString * xmlString = @"<title>test11</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitle1e
{
  NSString * xmlString = @"<title>test1</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitle1f
{
  NSString * xmlString = @"<title>Track 1</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitle20
{
  NSString * xmlString = @"<title>test\342\200\246</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitle21
{
  NSString * xmlString = @"<title>Signature Test (Johan speaking)</title>";
  
  // Do your test for the <title/> element
}
- (void) testTitle22
{
  NSString * xmlString = @"<title>Track 1</title>";
  
  // Do your test for the <title/> element
}
- (void) testAliasList0
{
  NSString * xmlString = @"<alias-list count=\"12\">\n  <alias sort-name=\"MB Test Artist\">MB Test Artist</alias>\n  <alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias>\n  <alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias>\n  <alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias>\n  <alias sort-name=\"Qwlghm\">Qwlghm</alias>\n  <alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias>\n  <alias sort-name=\"Testing Artist\">Testing Artist</alias>\n  <alias sort-name=\"Testings Artist\">Testings Artist</alias>\n  <alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias>\n  <alias sort-name=\"testalias\">testalias</alias>\n  <alias sort-name=\"yatta!\">yatta!</alias>\n  <alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias>\n</alias-list>";
  
  // Do your test for the <alias-list/> element
}
- (void) testRecordingList0
{
  NSString * xmlString = @"<recording-list count=\"20\">\n  <recording id=\"01f88fa8-7bd5-402f-8d6f-65b62480ef3f\">\n    <title>3 on Duplicate</title>\n    <length>180000</length>\n    <disambiguation>test_</disambiguation>\n  </recording>\n  <recording id=\"0fe39742-f4ca-49ef-8281-80946564cf44\">\n    <title>Oh, I\'m sorry! Did I break your concentration? (Jules)</title>\n    <length>482933</length>\n  </recording>\n  <recording id=\"2cfac6a6-cd1d-415a-97d2-71c881169235\">\n    <title>One</title>\n    <length>24306</length>\n  </recording>\n  <recording id=\"41de7ed6-2f97-4a01-90f8-28f721e37cb2\">\n    <title>test3</title>\n    <length>1346</length>\n  </recording>\n  <recording id=\"59a408a8-802d-41ee-a228-5e52a86a28b8\">\n    <title>Signature Test (Johan speaking)</title>\n    <length>604666</length>\n  </recording>\n  <recording id=\"5aed82a7-1da6-4e57-a3be-3e84da727d73\">\n    <title>taesting blah-blah ss aa \303\266</title>\n  </recording>\n  <recording id=\"5b2d7a8c-da27-460d-b491-34f66e3b7ba5\">\n    <title>License Placeholder</title>\n  </recording>\n  <recording id=\"6238b8f4-7d04-4ff7-a4ed-86e4b85860bd\">\n    <title>track #2</title>\n  </recording>\n  <recording id=\"6bccbe96-2801-410d-949d-b101bb393d59\">\n    <title>te.. aw forget it</title>\n    <length>13</length>\n  </recording>\n  <recording id=\"7362b9e3-e12d-4bbe-bb6e-c94be47950eb\">\n    <title>Track 1</title>\n    <length>1457586</length>\n  </recording>\n  <recording id=\"74df6277-36ea-4077-8a34-a3328760d0cb\">\n    <title>%track</title>\n    <length>36059000</length>\n    <disambiguation>test</disambiguation>\n  </recording>\n  <recording id=\"7be53912-f01d-4422-97d1-16ad63c24816\">\n    <title>his floor</title>\n    <length>83000</length>\n  </recording>\n  <recording id=\"7cd3e324-1be9-4026-a9cb-b783c474c132\">\n    <title>test</title>\n  </recording>\n  <recording id=\"8a80f386-c321-43d0-b289-368d8df83127\">\n    <title>test2</title>\n    <length>1346</length>\n  </recording>\n  <recording id=\"9a8168c1-7475-42ea-89e5-ec306b660b6c\">\n    <title>Please Mister Nagios</title>\n  </recording>\n  <recording id=\"a2af846a-93a1-4ea8-ab36-0ef005209bd1\">\n    <title>asdfdsf</title>\n  </recording>\n  <recording id=\"c34260fc-8b4c-4ce6-a0dd-9001c05ee029\">\n    <title>test11</title>\n  </recording>\n  <recording id=\"e7e0cb25-ee2d-4cb9-85fe-a2a9d213f20c\">\n    <title>test1</title>\n    <length>1346</length>\n  </recording>\n  <recording id=\"fbae3d07-69c3-4f00-a1ef-c99f0da54127\">\n    <title>track #1</title>\n  </recording>\n  <recording id=\"fd4d253f-ea0f-4ba3-8e18-d861e49b06ac\">\n    <title>\330\250\330\247\331\204\330\263\331\203\331\210\330\252 (\330\261\331\212\331\205\331\203\330\263)</title>\n    <length>234000</length>\n  </recording>\n</recording-list>";
  
  // Do your test for the <recording-list/> element
}
- (void) testTextRepresentation0
{
  NSString * xmlString = @"<text-representation>\n  <language>eng</language>\n  <script>Latn</script>\n</text-representation>";
  
  // Do your test for the <text-representation/> element
}
- (void) testTextRepresentation1
{
  NSString * xmlString = @"<text-representation>\n  <language>eng</language>\n  <script>Latn</script>\n</text-representation>";
  
  // Do your test for the <text-representation/> element
}
- (void) testLifeSpan0
{
  NSString * xmlString = @"<life-span>\n  <begin>1001-01-01</begin>\n  <end>1098-12-31</end>\n  <ended>true</ended>\n</life-span>";
  
  // Do your test for the <life-span/> element
}

@end

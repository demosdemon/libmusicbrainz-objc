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

- (void) testError
{
  NSString * xmlString = @"<?xml version=\"1.0\" encoding=\"UTF-8\"?><error><text>recording-level-rels is not a valid inc parameter for the artist resource.</text><text>For usage, please see: http://musicbrainz.org/development/mmd</text></error>";
  NSXMLDocument * doc = [[NSXMLDocument alloc] initWithXMLString:xmlString options:0 error:nil];
  id entity = [MBEntity entityWithElement:[doc rootElement]];
  DLogObject(entity);
  STAssertTrue([entity isKindOfClass:[NSError class]], @"Error is not an error");
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

- (void) runReleaseGroup:(id)entity
{
  // Run release-group tests
}

- (void) runAlias:(id)entity
{
  // Run alias tests
}

- (void) runArtistCredit:(id)entity
{
  // Run artist-credit tests
}

- (void) runUserRating:(id)entity
{
  // Run user-rating tests
}

- (void) runSortName:(id)entity
{
  // Run sort-name tests
}

- (void) runTarget:(id)entity
{
  // Run target tests
}

- (void) runAttribute:(id)entity
{
  // Run attribute tests
}

- (void) runRecordingList:(id)entity
{
  // Run recording-list tests
}

- (void) runMetadata:(id)entity
{
  // Run metadata tests
}

- (void) runTagList:(id)entity
{
  // Run tag-list tests
}

- (void) runPrimaryType:(id)entity
{
  // Run primary-type tests
}

- (void) runNameCredit:(id)entity
{
  // Run name-credit tests
}

- (void) runWorkList:(id)entity
{
  // Run work-list tests
}

- (void) runTag:(id)entity
{
  // Run tag tests
}

- (void) runEnd:(id)entity
{
  // Run end tests
}

- (void) runLifeSpan:(id)entity
{
  // Run life-span tests
}

- (void) runUserTagList:(id)entity
{
  // Run user-tag-list tests
}

- (void) runLength:(id)entity
{
  // Run length tests
}

- (void) runBegin:(id)entity
{
  // Run begin tests
}

- (void) runPuidList:(id)entity
{
  // Run puid-list tests
}

- (void) runReleaseGroupList:(id)entity
{
  // Run release-group-list tests
}

- (void) runName:(id)entity
{
  // Run name tests
}

- (void) runPuid:(id)entity
{
  // Run puid tests
}

- (void) runAttributeList:(id)entity
{
  // Run attribute-list tests
}

- (void) runReleaseList:(id)entity
{
  // Run release-list tests
}

- (void) runFirstReleaseDate:(id)entity
{
  // Run first-release-date tests
}

- (void) runRecording:(id)entity
{
  // Run recording tests
}

- (void) runRelation:(id)entity
{
  // Run relation tests
}

- (void) runWork:(id)entity
{
  // Run work tests
}

- (void) runAliasList:(id)entity
{
  // Run alias-list tests
}

- (void) runUserTag:(id)entity
{
  // Run user-tag tests
}

- (void) runArtist:(id)entity
{
  // Run artist tests
}

- (void) runTitle:(id)entity
{
  // Run title tests
}

- (void) runRelationList:(id)entity
{
  // Run relation-list tests
}

- (void) runDisambiguation:(id)entity
{
  // Run disambiguation tests
}

- (void) runRating:(id)entity
{
  // Run rating tests
}

- (void) runEnded:(id)entity
{
  // Run ended tests
}

- (void) testReleaseGroup1 {
  NSString * xmlString = @"<release-group type=\"Other\" id=\"7f1c3043-e164-464a-9131-10ac49011fab\"><title>License Placeholder</title><first-release-date>2011-12-09</first-release-date><primary-type>Other</primary-type><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></release-group>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Type], @"Other", @"%@ != Other", [entity Type]);
  STAssertEqualStrings([entity Id], @"7f1c3043-e164-464a-9131-10ac49011fab", @"%@ != 7f1c3043-e164-464a-9131-10ac49011fab", [entity Id]);
  STAssertEqualStrings([entity Title], @"License Placeholder", @"%@ != License Placeholder", [entity Title]);
  STAssertEqualStrings([entity FirstReleaseDate], @"2011-12-09", @"%@ != 2011-12-09", [entity FirstReleaseDate]);
  STAssertEqualStrings([entity PrimaryType], @"Other", @"%@ != Other", [entity PrimaryType]);
  STAssertNotNil([entity ArtistCredit], @"ArtistCredit is nil");
  [self runArtistCredit:[entity ArtistCredit]];
  
  [self runReleaseGroup:entity];
}

- (void) testReleaseGroup2 {
  NSString * xmlString = @"<release-group id=\"da7b4220-4c8b-498b-bf78-5a035e445dd3\"><title>TEST</title><first-release-date></first-release-date><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></release-group>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"da7b4220-4c8b-498b-bf78-5a035e445dd3", @"%@ != da7b4220-4c8b-498b-bf78-5a035e445dd3", [entity Id]);
  STAssertEqualStrings([entity Title], @"TEST", @"%@ != TEST", [entity Title]);
  STAssertEqualStrings([entity FirstReleaseDate], @"", @"%@ != ", [entity FirstReleaseDate]);
  STAssertNotNil([entity ArtistCredit], @"ArtistCredit is nil");
  [self runArtistCredit:[entity ArtistCredit]];
  
  [self runReleaseGroup:entity];
}

- (void) testReleaseGroup3 {
  NSString * xmlString = @"<release-group type=\"Other\" id=\"e916d4bf-8e8f-3107-ab4a-4c3774e23990\"><title>Nagios Check Release</title><first-release-date>1920</first-release-date><primary-type>Other</primary-type><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></release-group>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Type], @"Other", @"%@ != Other", [entity Type]);
  STAssertEqualStrings([entity Id], @"e916d4bf-8e8f-3107-ab4a-4c3774e23990", @"%@ != e916d4bf-8e8f-3107-ab4a-4c3774e23990", [entity Id]);
  STAssertEqualStrings([entity Title], @"Nagios Check Release", @"%@ != Nagios Check Release", [entity Title]);
  STAssertEqualObjects([entity FirstReleaseDate], @1920, @"%@ != 1920", [entity FirstReleaseDate]);
  STAssertEqualStrings([entity FirstReleaseDate], @"1920", @"%@ != 1920", [entity FirstReleaseDate]);
  STAssertEqualStrings([entity PrimaryType], @"Other", @"%@ != Other", [entity PrimaryType]);
  STAssertNotNil([entity ArtistCredit], @"ArtistCredit is nil");
  [self runArtistCredit:[entity ArtistCredit]];
  
  [self runReleaseGroup:entity];
}

- (void) testAlias1 {
  NSString * xmlString = @"<alias sort-name=\"testalias\">testalias</alias>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity SortName], @"testalias", @"%@ != testalias", [entity SortName]);
  STAssertEqualStrings([entity Text], @"testalias", @"%@ != testalias", [entity Text]);
  
  [self runAlias:entity];
}

- (void) testAlias2 {
  NSString * xmlString = @"<alias sort-name=\"Testing Artist\">Testing Artist</alias>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity SortName], @"Testing Artist", @"%@ != Testing Artist", [entity SortName]);
  STAssertEqualStrings([entity Text], @"Testing Artist", @"%@ != Testing Artist", [entity Text]);
  
  [self runAlias:entity];
}

- (void) testAlias3 {
  NSString * xmlString = @"<alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity SortName], @"Move for Great speed Testing", @"%@ != Move for Great speed Testing", [entity SortName]);
  STAssertEqualStrings([entity Text], @"Move for Great speed Testing", @"%@ != Move for Great speed Testing", [entity Text]);
  
  [self runAlias:entity];
}

- (void) testAlias4 {
  NSString * xmlString = @"<alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity SortName], @"MusicBrainz Test Artist Qwlghm", @"%@ != MusicBrainz Test Artist Qwlghm", [entity SortName]);
  STAssertEqualStrings([entity Text], @"MusicBrainz Test Artist Qwlghm", @"%@ != MusicBrainz Test Artist Qwlghm", [entity Text]);
  
  [self runAlias:entity];
}

- (void) testAlias5 {
  NSString * xmlString = @"<alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity SortName], @"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266", @"%@ != \343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266", [entity SortName]);
  STAssertEqualStrings([entity Text], @"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266", @"%@ != \343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266", [entity Text]);
  
  [self runAlias:entity];
}

- (void) testAlias6 {
  NSString * xmlString = @"<alias sort-name=\"Qwlghm\">Qwlghm</alias>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity SortName], @"Qwlghm", @"%@ != Qwlghm", [entity SortName]);
  STAssertEqualStrings([entity Text], @"Qwlghm", @"%@ != Qwlghm", [entity Text]);
  
  [self runAlias:entity];
}

- (void) testAlias7 {
  NSString * xmlString = @"<alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity SortName], @"MusicBrainz Test Artist Frobozz", @"%@ != MusicBrainz Test Artist Frobozz", [entity SortName]);
  STAssertEqualStrings([entity Text], @"MusicBrainz Test Artist Frobozz", @"%@ != MusicBrainz Test Artist Frobozz", [entity Text]);
  
  [self runAlias:entity];
}

- (void) testAlias8 {
  NSString * xmlString = @"<alias sort-name=\"MB Test Artist\">MB Test Artist</alias>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity SortName], @"MB Test Artist", @"%@ != MB Test Artist", [entity SortName]);
  STAssertEqualStrings([entity Text], @"MB Test Artist", @"%@ != MB Test Artist", [entity Text]);
  
  [self runAlias:entity];
}

- (void) testAlias9 {
  NSString * xmlString = @"<alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity SortName], @"Tedious Test Artist", @"%@ != Tedious Test Artist", [entity SortName]);
  STAssertEqualStrings([entity Text], @"Tedious Test Artist", @"%@ != Tedious Test Artist", [entity Text]);
  
  [self runAlias:entity];
}

- (void) testAlias10 {
  NSString * xmlString = @"<alias sort-name=\"Testings Artist\">Testings Artist</alias>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity SortName], @"Testings Artist", @"%@ != Testings Artist", [entity SortName]);
  STAssertEqualStrings([entity Text], @"Testings Artist", @"%@ != Testings Artist", [entity Text]);
  
  [self runAlias:entity];
}

- (void) testAlias11 {
  NSString * xmlString = @"<alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity SortName], @"Yet another tedious test artist", @"%@ != Yet another tedious test artist", [entity SortName]);
  STAssertEqualStrings([entity Text], @"Yet another tedious test artist", @"%@ != Yet another tedious test artist", [entity Text]);
  
  [self runAlias:entity];
}

- (void) testAlias12 {
  NSString * xmlString = @"<alias sort-name=\"yatta!\">yatta!</alias>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity SortName], @"yatta!", @"%@ != yatta!", [entity SortName]);
  STAssertEqualStrings([entity Text], @"yatta!", @"%@ != yatta!", [entity Text]);
  
  [self runAlias:entity];
}

- (void) testArtistCredit1 {
  NSString * xmlString = @"<artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualObjects([entity Count], @1, @"%@ != 1", [entity Count]);
  
  [self runArtistCredit:entity];
}

- (void) testArtistCredit2 {
  NSString * xmlString = @"<artist-credit><name-credit><name>MusicBrainzz Test Artist</name><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualObjects([entity Count], @1, @"%@ != 1", [entity Count]);
  
  [self runArtistCredit:entity];
}

- (void) testUserRating1 {
  NSString * xmlString = @"<user-rating>4</user-rating>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualObjects([entity Text], @4, @"%@ != 4", [entity Text]);
  STAssertEqualStrings([entity Text], @"4", @"%@ != 4", [entity Text]);
  
  [self runUserRating:entity];
}

- (void) testSortName1 {
  NSString * xmlString = @"<sort-name>MusicBrainz Test Artist</sort-name>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"MusicBrainz Test Artist", @"%@ != MusicBrainz Test Artist", [entity Text]);
  
  [self runSortName:entity];
}

- (void) testTarget1 {
  NSString * xmlString = @"<target>895704ca-b6d3-374f-aa98-56fbea9643a2</target>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"895704ca-b6d3-374f-aa98-56fbea9643a2", @"%@ != 895704ca-b6d3-374f-aa98-56fbea9643a2", [entity Text]);
  
  [self runTarget:entity];
}

- (void) testTarget2 {
  NSString * xmlString = @"<target>7be53912-f01d-4422-97d1-16ad63c24816</target>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"7be53912-f01d-4422-97d1-16ad63c24816", @"%@ != 7be53912-f01d-4422-97d1-16ad63c24816", [entity Text]);
  
  [self runTarget:entity];
}

- (void) testTarget3 {
  NSString * xmlString = @"<target>339ed331-2bdf-3208-850e-c86095ba9c23</target>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"339ed331-2bdf-3208-850e-c86095ba9c23", @"%@ != 339ed331-2bdf-3208-850e-c86095ba9c23", [entity Text]);
  
  [self runTarget:entity];
}

- (void) testAttribute1 {
  NSString * xmlString = @"<attribute>vacuum cleaner</attribute>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"vacuum cleaner", @"%@ != vacuum cleaner", [entity Text]);
  
  [self runAttribute:entity];
}

- (void) testAttribute2 {
  NSString * xmlString = @"<attribute>translated</attribute>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"translated", @"%@ != translated", [entity Text]);
  
  [self runAttribute:entity];
}

- (void) testRecordingList1 {
  NSString * xmlString = @"<recording-list count=\"25\"><recording id=\"01f88fa8-7bd5-402f-8d6f-65b62480ef3f\"><title>3 on Duplicate</title><length>180000</length><disambiguation>test_</disambiguation><artist-credit><name-credit><name>MusicBrainzz Test Artist</name><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"0fe39742-f4ca-49ef-8281-80946564cf44\"><title>Oh, I\'m sorry! Did I break your concentration? (Jules)</title><length>482933</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit><puid-list count=\"1\"><puid id=\"1e59d775-faec-6b4e-854e-0f739841e346\"></puid></puid-list></recording><recording id=\"2cfac6a6-cd1d-415a-97d2-71c881169235\"><title>One</title><length>24306</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"2f55fc9a-378a-4a3b-bf06-9defeee6834f\"><title>4</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"3e90ce1f-87f0-4abf-a3a6-1dd84e581006\"><title>1</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"41de7ed6-2f97-4a01-90f8-28f721e37cb2\"><title>test3</title><length>1346</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"4ee3df46-dac2-4cc8-b196-5ff9a83b0ada\"><title>5</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"54366bd0-1772-4c8c-b4ed-c8fcaadfee56\"><title>2</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"59a408a8-802d-41ee-a228-5e52a86a28b8\"><title>Signature Test (Johan speaking)</title><length>604666</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"5aed82a7-1da6-4e57-a3be-3e84da727d73\"><title>taesting blah-blah ss aa \303\266</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"5b2d7a8c-da27-460d-b491-34f66e3b7ba5\"><title>License Placeholder</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"6238b8f4-7d04-4ff7-a4ed-86e4b85860bd\"><title>track #2</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit><puid-list count=\"1\"><puid id=\"c5a96ab3-7b85-795c-ad07-3c819111aeea\"></puid></puid-list></recording><recording id=\"6b4331f3-4e80-4d55-8df0-29083ca062a3\"><title>3</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"6bccbe96-2801-410d-949d-b101bb393d59\"><title>te.. aw forget it</title><length>13</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"7362b9e3-e12d-4bbe-bb6e-c94be47950eb\"><title>Track 1</title><length>1457586</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit><puid-list count=\"1\"><puid id=\"ae1975d3-75db-a704-d0de-a3bbd27614fc\"></puid></puid-list></recording><recording id=\"74df6277-36ea-4077-8a34-a3328760d0cb\"><title>%track</title><length>36059000</length><disambiguation>test</disambiguation><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"7be53912-f01d-4422-97d1-16ad63c24816\"><title>his floor</title><length>83000</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"7cd3e324-1be9-4026-a9cb-b783c474c132\"><title>test</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"8a80f386-c321-43d0-b289-368d8df83127\"><title>test2</title><length>1346</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"9a8168c1-7475-42ea-89e5-ec306b660b6c\"><title>Please Mister Nagios</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"a2af846a-93a1-4ea8-ab36-0ef005209bd1\"><title>asdfdsf</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"c34260fc-8b4c-4ce6-a0dd-9001c05ee029\"><title>test11</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"e7e0cb25-ee2d-4cb9-85fe-a2a9d213f20c\"><title>test1</title><length>1346</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"fbae3d07-69c3-4f00-a1ef-c99f0da54127\"><title>track #1</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"fd4d253f-ea0f-4ba3-8e18-d861e49b06ac\"><title>\330\250\330\247\331\204\330\263\331\203\331\210\330\252 (\330\261\331\212\331\205\331\203\330\263)</title><length>234000</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording></recording-list>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Count], @"25", @"%@ != 25", [entity Count]);
  STAssertEqualObjects([entity Count], @25, @"%@ != 25", [entity Count]);
  
  [self runRecordingList:entity];
}

- (void) testMetadata1 {
  NSString * xmlString = @"<metadata xmlns=\"http://musicbrainz.org/ns/mmd-2.0#\"><artist type=\"Other\" id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><life-span><begin>1001-01-01</begin><end>1098-12-31</end><ended>true</ended></life-span><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><recording-list count=\"25\"><recording id=\"01f88fa8-7bd5-402f-8d6f-65b62480ef3f\"><title>3 on Duplicate</title><length>180000</length><disambiguation>test_</disambiguation><artist-credit><name-credit><name>MusicBrainzz Test Artist</name><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"0fe39742-f4ca-49ef-8281-80946564cf44\"><title>Oh, I\'m sorry! Did I break your concentration? (Jules)</title><length>482933</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit><puid-list count=\"1\"><puid id=\"1e59d775-faec-6b4e-854e-0f739841e346\"></puid></puid-list></recording><recording id=\"2cfac6a6-cd1d-415a-97d2-71c881169235\"><title>One</title><length>24306</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"2f55fc9a-378a-4a3b-bf06-9defeee6834f\"><title>4</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"3e90ce1f-87f0-4abf-a3a6-1dd84e581006\"><title>1</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"41de7ed6-2f97-4a01-90f8-28f721e37cb2\"><title>test3</title><length>1346</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"4ee3df46-dac2-4cc8-b196-5ff9a83b0ada\"><title>5</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"54366bd0-1772-4c8c-b4ed-c8fcaadfee56\"><title>2</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"59a408a8-802d-41ee-a228-5e52a86a28b8\"><title>Signature Test (Johan speaking)</title><length>604666</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"5aed82a7-1da6-4e57-a3be-3e84da727d73\"><title>taesting blah-blah ss aa \303\266</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"5b2d7a8c-da27-460d-b491-34f66e3b7ba5\"><title>License Placeholder</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"6238b8f4-7d04-4ff7-a4ed-86e4b85860bd\"><title>track #2</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit><puid-list count=\"1\"><puid id=\"c5a96ab3-7b85-795c-ad07-3c819111aeea\"></puid></puid-list></recording><recording id=\"6b4331f3-4e80-4d55-8df0-29083ca062a3\"><title>3</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"6bccbe96-2801-410d-949d-b101bb393d59\"><title>te.. aw forget it</title><length>13</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"7362b9e3-e12d-4bbe-bb6e-c94be47950eb\"><title>Track 1</title><length>1457586</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit><puid-list count=\"1\"><puid id=\"ae1975d3-75db-a704-d0de-a3bbd27614fc\"></puid></puid-list></recording><recording id=\"74df6277-36ea-4077-8a34-a3328760d0cb\"><title>%track</title><length>36059000</length><disambiguation>test</disambiguation><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"7be53912-f01d-4422-97d1-16ad63c24816\"><title>his floor</title><length>83000</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"7cd3e324-1be9-4026-a9cb-b783c474c132\"><title>test</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"8a80f386-c321-43d0-b289-368d8df83127\"><title>test2</title><length>1346</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"9a8168c1-7475-42ea-89e5-ec306b660b6c\"><title>Please Mister Nagios</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"a2af846a-93a1-4ea8-ab36-0ef005209bd1\"><title>asdfdsf</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"c34260fc-8b4c-4ce6-a0dd-9001c05ee029\"><title>test11</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"e7e0cb25-ee2d-4cb9-85fe-a2a9d213f20c\"><title>test1</title><length>1346</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"fbae3d07-69c3-4f00-a1ef-c99f0da54127\"><title>track #1</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"fd4d253f-ea0f-4ba3-8e18-d861e49b06ac\"><title>\330\250\330\247\331\204\330\263\331\203\331\210\330\252 (\330\261\331\212\331\205\331\203\330\263)</title><length>234000</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording></recording-list><release-list count=\"0\"></release-list><release-group-list count=\"3\"><release-group type=\"Other\" id=\"7f1c3043-e164-464a-9131-10ac49011fab\"><title>License Placeholder</title><first-release-date>2011-12-09</first-release-date><primary-type>Other</primary-type><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></release-group><release-group id=\"da7b4220-4c8b-498b-bf78-5a035e445dd3\"><title>TEST</title><first-release-date></first-release-date><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></release-group><release-group type=\"Other\" id=\"e916d4bf-8e8f-3107-ab4a-4c3774e23990\"><title>Nagios Check Release</title><first-release-date>1920</first-release-date><primary-type>Other</primary-type><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></release-group></release-group-list><work-list count=\"9\"><work id=\"339ed331-2bdf-3208-850e-c86095ba9c23\"><title>One</title></work><work id=\"3adefdb4-d787-3d09-a288-14eaee8d637d\"><title>3 on Duplicate</title></work><work id=\"493c57fd-b85c-3a90-9129-b2a99c48095c\"><title>Oh, I\'m sorry! Did I break your concentration? (Jules)</title></work><work id=\"580b213e-3537-30da-ba5d-78228aeb66ba\"><title>test11</title></work><work id=\"6e83781f-a84c-3674-9948-c7951bea0dc0\"><title>test1</title></work><work id=\"895704ca-b6d3-374f-aa98-56fbea9643a2\"><title>Track 1</title></work><work id=\"a653cd7a-787f-425f-9b54-c254733e3ebb\"><title>test\342\200\246</title></work><work id=\"c18dc2be-0312-3dad-a1ca-7c7989e887e8\"><title>Signature Test (Johan speaking)</title></work><work id=\"cb9dc791-0c74-3c57-868b-341b074973f4\"><title>Track 1</title></work></work-list><relation-list target-type=\"recording\"><relation type=\"instrument\"><target>7be53912-f01d-4422-97d1-16ad63c24816</target><attribute-list><attribute>vacuum cleaner</attribute></attribute-list><recording id=\"7be53912-f01d-4422-97d1-16ad63c24816\"><title>his floor</title><length>83000</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording></relation></relation-list><relation-list target-type=\"work\"><relation type=\"writer\"><target>339ed331-2bdf-3208-850e-c86095ba9c23</target><work id=\"339ed331-2bdf-3208-850e-c86095ba9c23\"><title>One</title></work></relation><relation type=\"librettist\"><target>895704ca-b6d3-374f-aa98-56fbea9643a2</target><attribute-list><attribute>translated</attribute></attribute-list><work id=\"895704ca-b6d3-374f-aa98-56fbea9643a2\"><title>Track 1</title></work></relation></relation-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></metadata>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertNotNil([entity Artist], @"Artist is nil");
  [self runArtist:[entity Artist]];
  
  [self runMetadata:entity];
}

- (void) testTagList1 {
  NSString * xmlString = @"<tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualObjects([entity Count], @12, @"%@ != 12", [entity Count]);
  
  [self runTagList:entity];
}

- (void) testPrimaryType1 {
  NSString * xmlString = @"<primary-type>Other</primary-type>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"Other", @"%@ != Other", [entity Text]);
  
  [self runPrimaryType:entity];
}

- (void) testNameCredit1 {
  NSString * xmlString = @"<name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertNotNil([entity Artist], @"Artist is nil");
  [self runArtist:[entity Artist]];
  
  [self runNameCredit:entity];
}

- (void) testNameCredit2 {
  NSString * xmlString = @"<name-credit><name>MusicBrainzz Test Artist</name><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Name], @"MusicBrainzz Test Artist", @"%@ != MusicBrainzz Test Artist", [entity Name]);
  STAssertNotNil([entity Artist], @"Artist is nil");
  [self runArtist:[entity Artist]];
  
  [self runNameCredit:entity];
}

- (void) testWorkList1 {
  NSString * xmlString = @"<work-list count=\"9\"><work id=\"339ed331-2bdf-3208-850e-c86095ba9c23\"><title>One</title></work><work id=\"3adefdb4-d787-3d09-a288-14eaee8d637d\"><title>3 on Duplicate</title></work><work id=\"493c57fd-b85c-3a90-9129-b2a99c48095c\"><title>Oh, I\'m sorry! Did I break your concentration? (Jules)</title></work><work id=\"580b213e-3537-30da-ba5d-78228aeb66ba\"><title>test11</title></work><work id=\"6e83781f-a84c-3674-9948-c7951bea0dc0\"><title>test1</title></work><work id=\"895704ca-b6d3-374f-aa98-56fbea9643a2\"><title>Track 1</title></work><work id=\"a653cd7a-787f-425f-9b54-c254733e3ebb\"><title>test\342\200\246</title></work><work id=\"c18dc2be-0312-3dad-a1ca-7c7989e887e8\"><title>Signature Test (Johan speaking)</title></work><work id=\"cb9dc791-0c74-3c57-868b-341b074973f4\"><title>Track 1</title></work></work-list>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Count], @"9", @"%@ != 9", [entity Count]);
  STAssertEqualObjects([entity Count], @9, @"%@ != 9", [entity Count]);
  
  [self runWorkList:entity];
}

- (void) testTag1 {
  NSString * xmlString = @"<tag count=\"1\"><name>special purpose artist</name></tag>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Count], @"1", @"%@ != 1", [entity Count]);
  STAssertEqualStrings([entity Name], @"special purpose artist", @"%@ != special purpose artist", [entity Name]);
  
  [self runTag:entity];
}

- (void) testTag2 {
  NSString * xmlString = @"<tag count=\"1\"><name>test2</name></tag>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Count], @"1", @"%@ != 1", [entity Count]);
  STAssertEqualStrings([entity Name], @"test2", @"%@ != test2", [entity Name]);
  
  [self runTag:entity];
}

- (void) testTag3 {
  NSString * xmlString = @"<tag count=\"1\"><name>another tag</name></tag>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Count], @"1", @"%@ != 1", [entity Count]);
  STAssertEqualStrings([entity Name], @"another tag", @"%@ != another tag", [entity Name]);
  
  [self runTag:entity];
}

- (void) testTag4 {
  NSString * xmlString = @"<tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Count], @"1", @"%@ != 1", [entity Count]);
  STAssertEqualStrings([entity Name], @"\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff", @"%@ != \340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff", [entity Name]);
  
  [self runTag:entity];
}

- (void) testTag5 {
  NSString * xmlString = @"<tag count=\"1\"><name>special purpose musicbrainz</name></tag>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Count], @"1", @"%@ != 1", [entity Count]);
  STAssertEqualStrings([entity Name], @"special purpose musicbrainz", @"%@ != special purpose musicbrainz", [entity Name]);
  
  [self runTag:entity];
}

- (void) testTag6 {
  NSString * xmlString = @"<tag count=\"1\"><name>musicbrainz test artist</name></tag>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Count], @"1", @"%@ != 1", [entity Count]);
  STAssertEqualStrings([entity Name], @"musicbrainz test artist", @"%@ != musicbrainz test artist", [entity Name]);
  
  [self runTag:entity];
}

- (void) testTag7 {
  NSString * xmlString = @"<tag count=\"1\"><name>test metal</name></tag>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Count], @"1", @"%@ != 1", [entity Count]);
  STAssertEqualStrings([entity Name], @"test metal", @"%@ != test metal", [entity Name]);
  
  [self runTag:entity];
}

- (void) testTag8 {
  NSString * xmlString = @"<tag count=\"1\"><name>musicbrainz</name></tag>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Count], @"1", @"%@ != 1", [entity Count]);
  STAssertEqualStrings([entity Name], @"musicbrainz", @"%@ != musicbrainz", [entity Name]);
  
  [self runTag:entity];
}

- (void) testTag9 {
  NSString * xmlString = @"<tag count=\"1\"><name>for testing</name></tag>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Count], @"1", @"%@ != 1", [entity Count]);
  STAssertEqualStrings([entity Name], @"for testing", @"%@ != for testing", [entity Name]);
  
  [self runTag:entity];
}

- (void) testTag10 {
  NSString * xmlString = @"<tag count=\"3\"><name>moose</name></tag>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Count], @"3", @"%@ != 3", [entity Count]);
  STAssertEqualStrings([entity Name], @"moose", @"%@ != moose", [entity Name]);
  
  [self runTag:entity];
}

- (void) testTag11 {
  NSString * xmlString = @"<tag count=\"2\"><name>test tag</name></tag>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Count], @"2", @"%@ != 2", [entity Count]);
  STAssertEqualStrings([entity Name], @"test tag", @"%@ != test tag", [entity Name]);
  
  [self runTag:entity];
}

- (void) testTag12 {
  NSString * xmlString = @"<tag count=\"5\"><name>test</name></tag>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Count], @"5", @"%@ != 5", [entity Count]);
  STAssertEqualStrings([entity Name], @"test", @"%@ != test", [entity Name]);
  
  [self runTag:entity];
}

- (void) testEnd1 {
  NSString * xmlString = @"<end>1098-12-31</end>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"1098-12-31", @"%@ != 1098-12-31", [entity Text]);
  
  [self runEnd:entity];
}

- (void) testLifeSpan1 {
  NSString * xmlString = @"<life-span><begin>1001-01-01</begin><end>1098-12-31</end><ended>true</ended></life-span>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Begin], @"1001-01-01", @"%@ != 1001-01-01", [entity Begin]);
  STAssertEqualStrings([entity End], @"1098-12-31", @"%@ != 1098-12-31", [entity End]);
  STAssertTrue([entity Ended], @"%@ != true", [NSNumber numberWithBool:[entity Ended]]);
  
  [self runLifeSpan:entity];
}

- (void) testUserTagList1 {
  NSString * xmlString = @"<user-tag-list><user-tag><name>test</name></user-tag></user-tag-list>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualObjects([entity Count], @1, @"%@ != 1", [entity Count]);
  
  [self runUserTagList:entity];
}

- (void) testLength1 {
  NSString * xmlString = @"<length>13</length>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"13", @"%@ != 13", [entity Text]);
  
  [self runLength:entity];
}

- (void) testLength2 {
  NSString * xmlString = @"<length>1457586</length>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"1457586", @"%@ != 1457586", [entity Text]);
  
  [self runLength:entity];
}

- (void) testLength3 {
  NSString * xmlString = @"<length>604666</length>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"604666", @"%@ != 604666", [entity Text]);
  
  [self runLength:entity];
}

- (void) testLength4 {
  NSString * xmlString = @"<length>1346</length>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"1346", @"%@ != 1346", [entity Text]);
  
  [self runLength:entity];
}

- (void) testLength5 {
  NSString * xmlString = @"<length>234000</length>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"234000", @"%@ != 234000", [entity Text]);
  
  [self runLength:entity];
}

- (void) testLength6 {
  NSString * xmlString = @"<length>36059000</length>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"36059000", @"%@ != 36059000", [entity Text]);
  
  [self runLength:entity];
}

- (void) testLength7 {
  NSString * xmlString = @"<length>482933</length>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"482933", @"%@ != 482933", [entity Text]);
  
  [self runLength:entity];
}

- (void) testLength8 {
  NSString * xmlString = @"<length>24306</length>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"24306", @"%@ != 24306", [entity Text]);
  
  [self runLength:entity];
}

- (void) testLength9 {
  NSString * xmlString = @"<length>180000</length>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"180000", @"%@ != 180000", [entity Text]);
  
  [self runLength:entity];
}

- (void) testLength10 {
  NSString * xmlString = @"<length>83000</length>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"83000", @"%@ != 83000", [entity Text]);
  
  [self runLength:entity];
}

- (void) testBegin1 {
  NSString * xmlString = @"<begin>1001-01-01</begin>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"1001-01-01", @"%@ != 1001-01-01", [entity Text]);
  
  [self runBegin:entity];
}

- (void) testPuidList1 {
  NSString * xmlString = @"<puid-list count=\"1\"><puid id=\"1e59d775-faec-6b4e-854e-0f739841e346\"></puid></puid-list>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Count], @"1", @"%@ != 1", [entity Count]);
  STAssertEqualObjects([entity Count], @1, @"%@ != 1", [entity Count]);
  
  [self runPuidList:entity];
}

- (void) testPuidList2 {
  NSString * xmlString = @"<puid-list count=\"1\"><puid id=\"c5a96ab3-7b85-795c-ad07-3c819111aeea\"></puid></puid-list>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Count], @"1", @"%@ != 1", [entity Count]);
  STAssertEqualObjects([entity Count], @1, @"%@ != 1", [entity Count]);
  
  [self runPuidList:entity];
}

- (void) testPuidList3 {
  NSString * xmlString = @"<puid-list count=\"1\"><puid id=\"ae1975d3-75db-a704-d0de-a3bbd27614fc\"></puid></puid-list>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Count], @"1", @"%@ != 1", [entity Count]);
  STAssertEqualObjects([entity Count], @1, @"%@ != 1", [entity Count]);
  
  [self runPuidList:entity];
}

- (void) testReleaseGroupList1 {
  NSString * xmlString = @"<release-group-list count=\"3\"><release-group type=\"Other\" id=\"7f1c3043-e164-464a-9131-10ac49011fab\"><title>License Placeholder</title><first-release-date>2011-12-09</first-release-date><primary-type>Other</primary-type><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></release-group><release-group id=\"da7b4220-4c8b-498b-bf78-5a035e445dd3\"><title>TEST</title><first-release-date></first-release-date><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></release-group><release-group type=\"Other\" id=\"e916d4bf-8e8f-3107-ab4a-4c3774e23990\"><title>Nagios Check Release</title><first-release-date>1920</first-release-date><primary-type>Other</primary-type><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></release-group></release-group-list>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Count], @"3", @"%@ != 3", [entity Count]);
  STAssertEqualObjects([entity Count], @3, @"%@ != 3", [entity Count]);
  
  [self runReleaseGroupList:entity];
}

- (void) testName1 {
  NSString * xmlString = @"<name>another tag</name>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"another tag", @"%@ != another tag", [entity Text]);
  
  [self runName:entity];
}

- (void) testName2 {
  NSString * xmlString = @"<name>test2</name>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"test2", @"%@ != test2", [entity Text]);
  
  [self runName:entity];
}

- (void) testName3 {
  NSString * xmlString = @"<name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff", @"%@ != \340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff", [entity Text]);
  
  [self runName:entity];
}

- (void) testName4 {
  NSString * xmlString = @"<name>MusicBrainzz Test Artist</name>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"MusicBrainzz Test Artist", @"%@ != MusicBrainzz Test Artist", [entity Text]);
  
  [self runName:entity];
}

- (void) testName5 {
  NSString * xmlString = @"<name>test metal</name>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"test metal", @"%@ != test metal", [entity Text]);
  
  [self runName:entity];
}

- (void) testName6 {
  NSString * xmlString = @"<name>special purpose musicbrainz</name>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"special purpose musicbrainz", @"%@ != special purpose musicbrainz", [entity Text]);
  
  [self runName:entity];
}

- (void) testName7 {
  NSString * xmlString = @"<name>moose</name>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"moose", @"%@ != moose", [entity Text]);
  
  [self runName:entity];
}

- (void) testName8 {
  NSString * xmlString = @"<name>MusicBrainz Test Artist</name>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"MusicBrainz Test Artist", @"%@ != MusicBrainz Test Artist", [entity Text]);
  
  [self runName:entity];
}

- (void) testName9 {
  NSString * xmlString = @"<name>musicbrainz test artist</name>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"musicbrainz test artist", @"%@ != musicbrainz test artist", [entity Text]);
  
  [self runName:entity];
}

- (void) testName10 {
  NSString * xmlString = @"<name>special purpose artist</name>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"special purpose artist", @"%@ != special purpose artist", [entity Text]);
  
  [self runName:entity];
}

- (void) testName11 {
  NSString * xmlString = @"<name>musicbrainz</name>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"musicbrainz", @"%@ != musicbrainz", [entity Text]);
  
  [self runName:entity];
}

- (void) testName12 {
  NSString * xmlString = @"<name>test tag</name>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"test tag", @"%@ != test tag", [entity Text]);
  
  [self runName:entity];
}

- (void) testName13 {
  NSString * xmlString = @"<name>for testing</name>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"for testing", @"%@ != for testing", [entity Text]);
  
  [self runName:entity];
}

- (void) testName14 {
  NSString * xmlString = @"<name>test</name>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"test", @"%@ != test", [entity Text]);
  
  [self runName:entity];
}

- (void) testPuid1 {
  NSString * xmlString = @"<puid id=\"1e59d775-faec-6b4e-854e-0f739841e346\"></puid>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"1e59d775-faec-6b4e-854e-0f739841e346", @"%@ != 1e59d775-faec-6b4e-854e-0f739841e346", [entity Id]);
  
  [self runPuid:entity];
}

- (void) testPuid2 {
  NSString * xmlString = @"<puid id=\"ae1975d3-75db-a704-d0de-a3bbd27614fc\"></puid>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"ae1975d3-75db-a704-d0de-a3bbd27614fc", @"%@ != ae1975d3-75db-a704-d0de-a3bbd27614fc", [entity Id]);
  
  [self runPuid:entity];
}

- (void) testPuid3 {
  NSString * xmlString = @"<puid id=\"c5a96ab3-7b85-795c-ad07-3c819111aeea\"></puid>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"c5a96ab3-7b85-795c-ad07-3c819111aeea", @"%@ != c5a96ab3-7b85-795c-ad07-3c819111aeea", [entity Id]);
  
  [self runPuid:entity];
}

- (void) testAttributeList1 {
  NSString * xmlString = @"<attribute-list><attribute>translated</attribute></attribute-list>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualObjects([entity Count], @1, @"%@ != 1", [entity Count]);
  
  [self runAttributeList:entity];
}

- (void) testAttributeList2 {
  NSString * xmlString = @"<attribute-list><attribute>vacuum cleaner</attribute></attribute-list>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualObjects([entity Count], @1, @"%@ != 1", [entity Count]);
  
  [self runAttributeList:entity];
}

- (void) testReleaseList1 {
  NSString * xmlString = @"<release-list count=\"0\"></release-list>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Count], @"0", @"%@ != 0", [entity Count]);
  STAssertEqualObjects([entity Count], @0, @"%@ != 0", [entity Count]);
  
  [self runReleaseList:entity];
}

- (void) testFirstReleaseDate1 {
  NSString * xmlString = @"<first-release-date>1920</first-release-date>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"1920", @"%@ != 1920", [entity Text]);
  
  [self runFirstReleaseDate:entity];
}

- (void) testFirstReleaseDate2 {
  NSString * xmlString = @"<first-release-date>2011-12-09</first-release-date>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"2011-12-09", @"%@ != 2011-12-09", [entity Text]);
  
  [self runFirstReleaseDate:entity];
}

- (void) testFirstReleaseDate3 {
  NSString * xmlString = @"<first-release-date></first-release-date>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  
  [self runFirstReleaseDate:entity];
}

- (void) testRecording1 {
  NSString * xmlString = @"<recording id=\"6238b8f4-7d04-4ff7-a4ed-86e4b85860bd\"><title>track #2</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit><puid-list count=\"1\"><puid id=\"c5a96ab3-7b85-795c-ad07-3c819111aeea\"></puid></puid-list></recording>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"6238b8f4-7d04-4ff7-a4ed-86e4b85860bd", @"%@ != 6238b8f4-7d04-4ff7-a4ed-86e4b85860bd", [entity Id]);
  STAssertEqualStrings([entity Title], @"track #2", @"%@ != track #2", [entity Title]);
  STAssertNotNil([entity ArtistCredit], @"ArtistCredit is nil");
  [self runArtistCredit:[entity ArtistCredit]];
  STAssertNotNil([entity PuidList], @"PuidList is nil");
  [self runPuidList:[entity PuidList]];
  
  [self runRecording:entity];
}

- (void) testRecording2 {
  NSString * xmlString = @"<recording id=\"7be53912-f01d-4422-97d1-16ad63c24816\"><title>his floor</title><length>83000</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"7be53912-f01d-4422-97d1-16ad63c24816", @"%@ != 7be53912-f01d-4422-97d1-16ad63c24816", [entity Id]);
  STAssertEqualStrings([entity Title], @"his floor", @"%@ != his floor", [entity Title]);
  STAssertEqualObjects([entity Length], @83000, @"%@ != 83000", [entity Length]);
  STAssertEqualStrings([entity Length], @"83000", @"%@ != 83000", [entity Length]);
  STAssertNotNil([entity ArtistCredit], @"ArtistCredit is nil");
  [self runArtistCredit:[entity ArtistCredit]];
  
  [self runRecording:entity];
}

- (void) testRecording3 {
  NSString * xmlString = @"<recording id=\"2f55fc9a-378a-4a3b-bf06-9defeee6834f\"><title>4</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"2f55fc9a-378a-4a3b-bf06-9defeee6834f", @"%@ != 2f55fc9a-378a-4a3b-bf06-9defeee6834f", [entity Id]);
  STAssertEqualObjects([entity Title], @4, @"%@ != 4", [entity Title]);
  STAssertEqualStrings([entity Title], @"4", @"%@ != 4", [entity Title]);
  STAssertNotNil([entity ArtistCredit], @"ArtistCredit is nil");
  [self runArtistCredit:[entity ArtistCredit]];
  
  [self runRecording:entity];
}

- (void) testRecording4 {
  NSString * xmlString = @"<recording id=\"7cd3e324-1be9-4026-a9cb-b783c474c132\"><title>test</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"7cd3e324-1be9-4026-a9cb-b783c474c132", @"%@ != 7cd3e324-1be9-4026-a9cb-b783c474c132", [entity Id]);
  STAssertEqualStrings([entity Title], @"test", @"%@ != test", [entity Title]);
  STAssertNotNil([entity ArtistCredit], @"ArtistCredit is nil");
  [self runArtistCredit:[entity ArtistCredit]];
  
  [self runRecording:entity];
}

- (void) testRecording5 {
  NSString * xmlString = @"<recording id=\"7362b9e3-e12d-4bbe-bb6e-c94be47950eb\"><title>Track 1</title><length>1457586</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit><puid-list count=\"1\"><puid id=\"ae1975d3-75db-a704-d0de-a3bbd27614fc\"></puid></puid-list></recording>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"7362b9e3-e12d-4bbe-bb6e-c94be47950eb", @"%@ != 7362b9e3-e12d-4bbe-bb6e-c94be47950eb", [entity Id]);
  STAssertEqualStrings([entity Title], @"Track 1", @"%@ != Track 1", [entity Title]);
  STAssertEqualObjects([entity Length], @1457586, @"%@ != 1457586", [entity Length]);
  STAssertEqualStrings([entity Length], @"1457586", @"%@ != 1457586", [entity Length]);
  STAssertNotNil([entity ArtistCredit], @"ArtistCredit is nil");
  [self runArtistCredit:[entity ArtistCredit]];
  STAssertNotNil([entity PuidList], @"PuidList is nil");
  [self runPuidList:[entity PuidList]];
  
  [self runRecording:entity];
}

- (void) testRecording6 {
  NSString * xmlString = @"<recording id=\"6b4331f3-4e80-4d55-8df0-29083ca062a3\"><title>3</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"6b4331f3-4e80-4d55-8df0-29083ca062a3", @"%@ != 6b4331f3-4e80-4d55-8df0-29083ca062a3", [entity Id]);
  STAssertEqualObjects([entity Title], @3, @"%@ != 3", [entity Title]);
  STAssertEqualStrings([entity Title], @"3", @"%@ != 3", [entity Title]);
  STAssertNotNil([entity ArtistCredit], @"ArtistCredit is nil");
  [self runArtistCredit:[entity ArtistCredit]];
  
  [self runRecording:entity];
}

- (void) testRecording7 {
  NSString * xmlString = @"<recording id=\"74df6277-36ea-4077-8a34-a3328760d0cb\"><title>%track</title><length>36059000</length><disambiguation>test</disambiguation><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"74df6277-36ea-4077-8a34-a3328760d0cb", @"%@ != 74df6277-36ea-4077-8a34-a3328760d0cb", [entity Id]);
  STAssertEqualStrings([entity Title], @"%track", @"%@ != %track", [entity Title]);
  STAssertEqualObjects([entity Length], @36059000, @"%@ != 36059000", [entity Length]);
  STAssertEqualStrings([entity Length], @"36059000", @"%@ != 36059000", [entity Length]);
  STAssertEqualStrings([entity Disambiguation], @"test", @"%@ != test", [entity Disambiguation]);
  STAssertNotNil([entity ArtistCredit], @"ArtistCredit is nil");
  [self runArtistCredit:[entity ArtistCredit]];
  
  [self runRecording:entity];
}

- (void) testRecording8 {
  NSString * xmlString = @"<recording id=\"59a408a8-802d-41ee-a228-5e52a86a28b8\"><title>Signature Test (Johan speaking)</title><length>604666</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"59a408a8-802d-41ee-a228-5e52a86a28b8", @"%@ != 59a408a8-802d-41ee-a228-5e52a86a28b8", [entity Id]);
  STAssertEqualStrings([entity Title], @"Signature Test (Johan speaking)", @"%@ != Signature Test (Johan speaking)", [entity Title]);
  STAssertEqualObjects([entity Length], @604666, @"%@ != 604666", [entity Length]);
  STAssertEqualStrings([entity Length], @"604666", @"%@ != 604666", [entity Length]);
  STAssertNotNil([entity ArtistCredit], @"ArtistCredit is nil");
  [self runArtistCredit:[entity ArtistCredit]];
  
  [self runRecording:entity];
}

- (void) testRecording9 {
  NSString * xmlString = @"<recording id=\"fd4d253f-ea0f-4ba3-8e18-d861e49b06ac\"><title>\330\250\330\247\331\204\330\263\331\203\331\210\330\252 (\330\261\331\212\331\205\331\203\330\263)</title><length>234000</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"fd4d253f-ea0f-4ba3-8e18-d861e49b06ac", @"%@ != fd4d253f-ea0f-4ba3-8e18-d861e49b06ac", [entity Id]);
  STAssertEqualStrings([entity Title], @"\330\250\330\247\331\204\330\263\331\203\331\210\330\252 (\330\261\331\212\331\205\331\203\330\263)", @"%@ != \330\250\330\247\331\204\330\263\331\203\331\210\330\252 (\330\261\331\212\331\205\331\203\330\263)", [entity Title]);
  STAssertEqualObjects([entity Length], @234000, @"%@ != 234000", [entity Length]);
  STAssertEqualStrings([entity Length], @"234000", @"%@ != 234000", [entity Length]);
  STAssertNotNil([entity ArtistCredit], @"ArtistCredit is nil");
  [self runArtistCredit:[entity ArtistCredit]];
  
  [self runRecording:entity];
}

- (void) testRecording10 {
  NSString * xmlString = @"<recording id=\"01f88fa8-7bd5-402f-8d6f-65b62480ef3f\"><title>3 on Duplicate</title><length>180000</length><disambiguation>test_</disambiguation><artist-credit><name-credit><name>MusicBrainzz Test Artist</name><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"01f88fa8-7bd5-402f-8d6f-65b62480ef3f", @"%@ != 01f88fa8-7bd5-402f-8d6f-65b62480ef3f", [entity Id]);
  STAssertEqualStrings([entity Title], @"3 on Duplicate", @"%@ != 3 on Duplicate", [entity Title]);
  STAssertEqualObjects([entity Length], @180000, @"%@ != 180000", [entity Length]);
  STAssertEqualStrings([entity Length], @"180000", @"%@ != 180000", [entity Length]);
  STAssertEqualStrings([entity Disambiguation], @"test_", @"%@ != test_", [entity Disambiguation]);
  STAssertNotNil([entity ArtistCredit], @"ArtistCredit is nil");
  [self runArtistCredit:[entity ArtistCredit]];
  
  [self runRecording:entity];
}

- (void) testRecording11 {
  NSString * xmlString = @"<recording id=\"5aed82a7-1da6-4e57-a3be-3e84da727d73\"><title>taesting blah-blah ss aa \303\266</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"5aed82a7-1da6-4e57-a3be-3e84da727d73", @"%@ != 5aed82a7-1da6-4e57-a3be-3e84da727d73", [entity Id]);
  STAssertEqualStrings([entity Title], @"taesting blah-blah ss aa \303\266", @"%@ != taesting blah-blah ss aa \303\266", [entity Title]);
  STAssertNotNil([entity ArtistCredit], @"ArtistCredit is nil");
  [self runArtistCredit:[entity ArtistCredit]];
  
  [self runRecording:entity];
}

- (void) testRecording12 {
  NSString * xmlString = @"<recording id=\"c34260fc-8b4c-4ce6-a0dd-9001c05ee029\"><title>test11</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"c34260fc-8b4c-4ce6-a0dd-9001c05ee029", @"%@ != c34260fc-8b4c-4ce6-a0dd-9001c05ee029", [entity Id]);
  STAssertEqualStrings([entity Title], @"test11", @"%@ != test11", [entity Title]);
  STAssertNotNil([entity ArtistCredit], @"ArtistCredit is nil");
  [self runArtistCredit:[entity ArtistCredit]];
  
  [self runRecording:entity];
}

- (void) testRecording13 {
  NSString * xmlString = @"<recording id=\"3e90ce1f-87f0-4abf-a3a6-1dd84e581006\"><title>1</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"3e90ce1f-87f0-4abf-a3a6-1dd84e581006", @"%@ != 3e90ce1f-87f0-4abf-a3a6-1dd84e581006", [entity Id]);
  STAssertEqualObjects([entity Title], @1, @"%@ != 1", [entity Title]);
  STAssertEqualStrings([entity Title], @"1", @"%@ != 1", [entity Title]);
  STAssertNotNil([entity ArtistCredit], @"ArtistCredit is nil");
  [self runArtistCredit:[entity ArtistCredit]];
  
  [self runRecording:entity];
}

- (void) testRecording14 {
  NSString * xmlString = @"<recording id=\"54366bd0-1772-4c8c-b4ed-c8fcaadfee56\"><title>2</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"54366bd0-1772-4c8c-b4ed-c8fcaadfee56", @"%@ != 54366bd0-1772-4c8c-b4ed-c8fcaadfee56", [entity Id]);
  STAssertEqualObjects([entity Title], @2, @"%@ != 2", [entity Title]);
  STAssertEqualStrings([entity Title], @"2", @"%@ != 2", [entity Title]);
  STAssertNotNil([entity ArtistCredit], @"ArtistCredit is nil");
  [self runArtistCredit:[entity ArtistCredit]];
  
  [self runRecording:entity];
}

- (void) testRecording15 {
  NSString * xmlString = @"<recording id=\"8a80f386-c321-43d0-b289-368d8df83127\"><title>test2</title><length>1346</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"8a80f386-c321-43d0-b289-368d8df83127", @"%@ != 8a80f386-c321-43d0-b289-368d8df83127", [entity Id]);
  STAssertEqualStrings([entity Title], @"test2", @"%@ != test2", [entity Title]);
  STAssertEqualObjects([entity Length], @1346, @"%@ != 1346", [entity Length]);
  STAssertEqualStrings([entity Length], @"1346", @"%@ != 1346", [entity Length]);
  STAssertNotNil([entity ArtistCredit], @"ArtistCredit is nil");
  [self runArtistCredit:[entity ArtistCredit]];
  
  [self runRecording:entity];
}

- (void) testRecording16 {
  NSString * xmlString = @"<recording id=\"41de7ed6-2f97-4a01-90f8-28f721e37cb2\"><title>test3</title><length>1346</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"41de7ed6-2f97-4a01-90f8-28f721e37cb2", @"%@ != 41de7ed6-2f97-4a01-90f8-28f721e37cb2", [entity Id]);
  STAssertEqualStrings([entity Title], @"test3", @"%@ != test3", [entity Title]);
  STAssertEqualObjects([entity Length], @1346, @"%@ != 1346", [entity Length]);
  STAssertEqualStrings([entity Length], @"1346", @"%@ != 1346", [entity Length]);
  STAssertNotNil([entity ArtistCredit], @"ArtistCredit is nil");
  [self runArtistCredit:[entity ArtistCredit]];
  
  [self runRecording:entity];
}

- (void) testRecording17 {
  NSString * xmlString = @"<recording id=\"5b2d7a8c-da27-460d-b491-34f66e3b7ba5\"><title>License Placeholder</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"5b2d7a8c-da27-460d-b491-34f66e3b7ba5", @"%@ != 5b2d7a8c-da27-460d-b491-34f66e3b7ba5", [entity Id]);
  STAssertEqualStrings([entity Title], @"License Placeholder", @"%@ != License Placeholder", [entity Title]);
  STAssertNotNil([entity ArtistCredit], @"ArtistCredit is nil");
  [self runArtistCredit:[entity ArtistCredit]];
  
  [self runRecording:entity];
}

- (void) testRecording18 {
  NSString * xmlString = @"<recording id=\"2cfac6a6-cd1d-415a-97d2-71c881169235\"><title>One</title><length>24306</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"2cfac6a6-cd1d-415a-97d2-71c881169235", @"%@ != 2cfac6a6-cd1d-415a-97d2-71c881169235", [entity Id]);
  STAssertEqualStrings([entity Title], @"One", @"%@ != One", [entity Title]);
  STAssertEqualObjects([entity Length], @24306, @"%@ != 24306", [entity Length]);
  STAssertEqualStrings([entity Length], @"24306", @"%@ != 24306", [entity Length]);
  STAssertNotNil([entity ArtistCredit], @"ArtistCredit is nil");
  [self runArtistCredit:[entity ArtistCredit]];
  
  [self runRecording:entity];
}

- (void) testRecording19 {
  NSString * xmlString = @"<recording id=\"0fe39742-f4ca-49ef-8281-80946564cf44\"><title>Oh, I\'m sorry! Did I break your concentration? (Jules)</title><length>482933</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit><puid-list count=\"1\"><puid id=\"1e59d775-faec-6b4e-854e-0f739841e346\"></puid></puid-list></recording>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"0fe39742-f4ca-49ef-8281-80946564cf44", @"%@ != 0fe39742-f4ca-49ef-8281-80946564cf44", [entity Id]);
  STAssertEqualStrings([entity Title], @"Oh, I\'m sorry! Did I break your concentration? (Jules)", @"%@ != Oh, I\'m sorry! Did I break your concentration? (Jules)", [entity Title]);
  STAssertEqualObjects([entity Length], @482933, @"%@ != 482933", [entity Length]);
  STAssertEqualStrings([entity Length], @"482933", @"%@ != 482933", [entity Length]);
  STAssertNotNil([entity ArtistCredit], @"ArtistCredit is nil");
  [self runArtistCredit:[entity ArtistCredit]];
  STAssertNotNil([entity PuidList], @"PuidList is nil");
  [self runPuidList:[entity PuidList]];
  
  [self runRecording:entity];
}

- (void) testRecording20 {
  NSString * xmlString = @"<recording id=\"6bccbe96-2801-410d-949d-b101bb393d59\"><title>te.. aw forget it</title><length>13</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"6bccbe96-2801-410d-949d-b101bb393d59", @"%@ != 6bccbe96-2801-410d-949d-b101bb393d59", [entity Id]);
  STAssertEqualStrings([entity Title], @"te.. aw forget it", @"%@ != te.. aw forget it", [entity Title]);
  STAssertEqualObjects([entity Length], @13, @"%@ != 13", [entity Length]);
  STAssertEqualStrings([entity Length], @"13", @"%@ != 13", [entity Length]);
  STAssertNotNil([entity ArtistCredit], @"ArtistCredit is nil");
  [self runArtistCredit:[entity ArtistCredit]];
  
  [self runRecording:entity];
}

- (void) testRecording21 {
  NSString * xmlString = @"<recording id=\"4ee3df46-dac2-4cc8-b196-5ff9a83b0ada\"><title>5</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"4ee3df46-dac2-4cc8-b196-5ff9a83b0ada", @"%@ != 4ee3df46-dac2-4cc8-b196-5ff9a83b0ada", [entity Id]);
  STAssertEqualObjects([entity Title], @5, @"%@ != 5", [entity Title]);
  STAssertEqualStrings([entity Title], @"5", @"%@ != 5", [entity Title]);
  STAssertNotNil([entity ArtistCredit], @"ArtistCredit is nil");
  [self runArtistCredit:[entity ArtistCredit]];
  
  [self runRecording:entity];
}

- (void) testRecording22 {
  NSString * xmlString = @"<recording id=\"a2af846a-93a1-4ea8-ab36-0ef005209bd1\"><title>asdfdsf</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"a2af846a-93a1-4ea8-ab36-0ef005209bd1", @"%@ != a2af846a-93a1-4ea8-ab36-0ef005209bd1", [entity Id]);
  STAssertEqualStrings([entity Title], @"asdfdsf", @"%@ != asdfdsf", [entity Title]);
  STAssertNotNil([entity ArtistCredit], @"ArtistCredit is nil");
  [self runArtistCredit:[entity ArtistCredit]];
  
  [self runRecording:entity];
}

- (void) testRecording23 {
  NSString * xmlString = @"<recording id=\"fbae3d07-69c3-4f00-a1ef-c99f0da54127\"><title>track #1</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"fbae3d07-69c3-4f00-a1ef-c99f0da54127", @"%@ != fbae3d07-69c3-4f00-a1ef-c99f0da54127", [entity Id]);
  STAssertEqualStrings([entity Title], @"track #1", @"%@ != track #1", [entity Title]);
  STAssertNotNil([entity ArtistCredit], @"ArtistCredit is nil");
  [self runArtistCredit:[entity ArtistCredit]];
  
  [self runRecording:entity];
}

- (void) testRecording24 {
  NSString * xmlString = @"<recording id=\"9a8168c1-7475-42ea-89e5-ec306b660b6c\"><title>Please Mister Nagios</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"9a8168c1-7475-42ea-89e5-ec306b660b6c", @"%@ != 9a8168c1-7475-42ea-89e5-ec306b660b6c", [entity Id]);
  STAssertEqualStrings([entity Title], @"Please Mister Nagios", @"%@ != Please Mister Nagios", [entity Title]);
  STAssertNotNil([entity ArtistCredit], @"ArtistCredit is nil");
  [self runArtistCredit:[entity ArtistCredit]];
  
  [self runRecording:entity];
}

- (void) testRecording25 {
  NSString * xmlString = @"<recording id=\"e7e0cb25-ee2d-4cb9-85fe-a2a9d213f20c\"><title>test1</title><length>1346</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"e7e0cb25-ee2d-4cb9-85fe-a2a9d213f20c", @"%@ != e7e0cb25-ee2d-4cb9-85fe-a2a9d213f20c", [entity Id]);
  STAssertEqualStrings([entity Title], @"test1", @"%@ != test1", [entity Title]);
  STAssertEqualObjects([entity Length], @1346, @"%@ != 1346", [entity Length]);
  STAssertEqualStrings([entity Length], @"1346", @"%@ != 1346", [entity Length]);
  STAssertNotNil([entity ArtistCredit], @"ArtistCredit is nil");
  [self runArtistCredit:[entity ArtistCredit]];
  
  [self runRecording:entity];
}

- (void) testRelation1 {
  NSString * xmlString = @"<relation type=\"instrument\"><target>7be53912-f01d-4422-97d1-16ad63c24816</target><attribute-list><attribute>vacuum cleaner</attribute></attribute-list><recording id=\"7be53912-f01d-4422-97d1-16ad63c24816\"><title>his floor</title><length>83000</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording></relation>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Type], @"instrument", @"%@ != instrument", [entity Type]);
  STAssertEqualStrings([entity Target], @"7be53912-f01d-4422-97d1-16ad63c24816", @"%@ != 7be53912-f01d-4422-97d1-16ad63c24816", [entity Target]);
  STAssertNotNil([entity AttributeList], @"AttributeList is nil");
  [self runAttributeList:[entity AttributeList]];
  STAssertNotNil([entity Recording], @"Recording is nil");
  [self runRecording:[entity Recording]];
  
  [self runRelation:entity];
}

- (void) testRelation2 {
  NSString * xmlString = @"<relation type=\"librettist\"><target>895704ca-b6d3-374f-aa98-56fbea9643a2</target><attribute-list><attribute>translated</attribute></attribute-list><work id=\"895704ca-b6d3-374f-aa98-56fbea9643a2\"><title>Track 1</title></work></relation>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Type], @"librettist", @"%@ != librettist", [entity Type]);
  STAssertEqualStrings([entity Target], @"895704ca-b6d3-374f-aa98-56fbea9643a2", @"%@ != 895704ca-b6d3-374f-aa98-56fbea9643a2", [entity Target]);
  STAssertNotNil([entity AttributeList], @"AttributeList is nil");
  [self runAttributeList:[entity AttributeList]];
  STAssertNotNil([entity Work], @"Work is nil");
  [self runWork:[entity Work]];
  
  [self runRelation:entity];
}

- (void) testRelation3 {
  NSString * xmlString = @"<relation type=\"writer\"><target>339ed331-2bdf-3208-850e-c86095ba9c23</target><work id=\"339ed331-2bdf-3208-850e-c86095ba9c23\"><title>One</title></work></relation>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Type], @"writer", @"%@ != writer", [entity Type]);
  STAssertEqualStrings([entity Target], @"339ed331-2bdf-3208-850e-c86095ba9c23", @"%@ != 339ed331-2bdf-3208-850e-c86095ba9c23", [entity Target]);
  STAssertNotNil([entity Work], @"Work is nil");
  [self runWork:[entity Work]];
  
  [self runRelation:entity];
}

- (void) testWork1 {
  NSString * xmlString = @"<work id=\"cb9dc791-0c74-3c57-868b-341b074973f4\"><title>Track 1</title></work>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"cb9dc791-0c74-3c57-868b-341b074973f4", @"%@ != cb9dc791-0c74-3c57-868b-341b074973f4", [entity Id]);
  STAssertEqualStrings([entity Title], @"Track 1", @"%@ != Track 1", [entity Title]);
  
  [self runWork:entity];
}

- (void) testWork2 {
  NSString * xmlString = @"<work id=\"3adefdb4-d787-3d09-a288-14eaee8d637d\"><title>3 on Duplicate</title></work>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"3adefdb4-d787-3d09-a288-14eaee8d637d", @"%@ != 3adefdb4-d787-3d09-a288-14eaee8d637d", [entity Id]);
  STAssertEqualStrings([entity Title], @"3 on Duplicate", @"%@ != 3 on Duplicate", [entity Title]);
  
  [self runWork:entity];
}

- (void) testWork3 {
  NSString * xmlString = @"<work id=\"339ed331-2bdf-3208-850e-c86095ba9c23\"><title>One</title></work>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"339ed331-2bdf-3208-850e-c86095ba9c23", @"%@ != 339ed331-2bdf-3208-850e-c86095ba9c23", [entity Id]);
  STAssertEqualStrings([entity Title], @"One", @"%@ != One", [entity Title]);
  
  [self runWork:entity];
}

- (void) testWork4 {
  NSString * xmlString = @"<work id=\"a653cd7a-787f-425f-9b54-c254733e3ebb\"><title>test\342\200\246</title></work>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"a653cd7a-787f-425f-9b54-c254733e3ebb", @"%@ != a653cd7a-787f-425f-9b54-c254733e3ebb", [entity Id]);
  STAssertEqualStrings([entity Title], @"test\342\200\246", @"%@ != test\342\200\246", [entity Title]);
  
  [self runWork:entity];
}

- (void) testWork5 {
  NSString * xmlString = @"<work id=\"6e83781f-a84c-3674-9948-c7951bea0dc0\"><title>test1</title></work>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"6e83781f-a84c-3674-9948-c7951bea0dc0", @"%@ != 6e83781f-a84c-3674-9948-c7951bea0dc0", [entity Id]);
  STAssertEqualStrings([entity Title], @"test1", @"%@ != test1", [entity Title]);
  
  [self runWork:entity];
}

- (void) testWork6 {
  NSString * xmlString = @"<work id=\"c18dc2be-0312-3dad-a1ca-7c7989e887e8\"><title>Signature Test (Johan speaking)</title></work>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"c18dc2be-0312-3dad-a1ca-7c7989e887e8", @"%@ != c18dc2be-0312-3dad-a1ca-7c7989e887e8", [entity Id]);
  STAssertEqualStrings([entity Title], @"Signature Test (Johan speaking)", @"%@ != Signature Test (Johan speaking)", [entity Title]);
  
  [self runWork:entity];
}

- (void) testWork7 {
  NSString * xmlString = @"<work id=\"895704ca-b6d3-374f-aa98-56fbea9643a2\"><title>Track 1</title></work>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"895704ca-b6d3-374f-aa98-56fbea9643a2", @"%@ != 895704ca-b6d3-374f-aa98-56fbea9643a2", [entity Id]);
  STAssertEqualStrings([entity Title], @"Track 1", @"%@ != Track 1", [entity Title]);
  
  [self runWork:entity];
}

- (void) testWork8 {
  NSString * xmlString = @"<work id=\"493c57fd-b85c-3a90-9129-b2a99c48095c\"><title>Oh, I\'m sorry! Did I break your concentration? (Jules)</title></work>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"493c57fd-b85c-3a90-9129-b2a99c48095c", @"%@ != 493c57fd-b85c-3a90-9129-b2a99c48095c", [entity Id]);
  STAssertEqualStrings([entity Title], @"Oh, I\'m sorry! Did I break your concentration? (Jules)", @"%@ != Oh, I\'m sorry! Did I break your concentration? (Jules)", [entity Title]);
  
  [self runWork:entity];
}

- (void) testWork9 {
  NSString * xmlString = @"<work id=\"580b213e-3537-30da-ba5d-78228aeb66ba\"><title>test11</title></work>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"580b213e-3537-30da-ba5d-78228aeb66ba", @"%@ != 580b213e-3537-30da-ba5d-78228aeb66ba", [entity Id]);
  STAssertEqualStrings([entity Title], @"test11", @"%@ != test11", [entity Title]);
  
  [self runWork:entity];
}

- (void) testAliasList1 {
  NSString * xmlString = @"<alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  //STAssertEqualStrings([entity Count], @"12", @"%@ != 12", [entity Count]);
  STAssertEqualObjects([entity Count], @12, @"%@ != 12", [entity Count]);
  
  [self runAliasList:entity];
}

- (void) testUserTag1 {
  NSString * xmlString = @"<user-tag><name>test</name></user-tag>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Name], @"test", @"%@ != test", [entity Name]);
  
  [self runUserTag:entity];
}

- (void) testArtist1 {
  NSString * xmlString = @"<artist type=\"Other\" id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><life-span><begin>1001-01-01</begin><end>1098-12-31</end><ended>true</ended></life-span><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><recording-list count=\"25\"><recording id=\"01f88fa8-7bd5-402f-8d6f-65b62480ef3f\"><title>3 on Duplicate</title><length>180000</length><disambiguation>test_</disambiguation><artist-credit><name-credit><name>MusicBrainzz Test Artist</name><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"0fe39742-f4ca-49ef-8281-80946564cf44\"><title>Oh, I\'m sorry! Did I break your concentration? (Jules)</title><length>482933</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit><puid-list count=\"1\"><puid id=\"1e59d775-faec-6b4e-854e-0f739841e346\"></puid></puid-list></recording><recording id=\"2cfac6a6-cd1d-415a-97d2-71c881169235\"><title>One</title><length>24306</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"2f55fc9a-378a-4a3b-bf06-9defeee6834f\"><title>4</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"3e90ce1f-87f0-4abf-a3a6-1dd84e581006\"><title>1</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"41de7ed6-2f97-4a01-90f8-28f721e37cb2\"><title>test3</title><length>1346</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"4ee3df46-dac2-4cc8-b196-5ff9a83b0ada\"><title>5</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"54366bd0-1772-4c8c-b4ed-c8fcaadfee56\"><title>2</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"59a408a8-802d-41ee-a228-5e52a86a28b8\"><title>Signature Test (Johan speaking)</title><length>604666</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"5aed82a7-1da6-4e57-a3be-3e84da727d73\"><title>taesting blah-blah ss aa \303\266</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"5b2d7a8c-da27-460d-b491-34f66e3b7ba5\"><title>License Placeholder</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"6238b8f4-7d04-4ff7-a4ed-86e4b85860bd\"><title>track #2</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit><puid-list count=\"1\"><puid id=\"c5a96ab3-7b85-795c-ad07-3c819111aeea\"></puid></puid-list></recording><recording id=\"6b4331f3-4e80-4d55-8df0-29083ca062a3\"><title>3</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"6bccbe96-2801-410d-949d-b101bb393d59\"><title>te.. aw forget it</title><length>13</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"7362b9e3-e12d-4bbe-bb6e-c94be47950eb\"><title>Track 1</title><length>1457586</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit><puid-list count=\"1\"><puid id=\"ae1975d3-75db-a704-d0de-a3bbd27614fc\"></puid></puid-list></recording><recording id=\"74df6277-36ea-4077-8a34-a3328760d0cb\"><title>%track</title><length>36059000</length><disambiguation>test</disambiguation><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"7be53912-f01d-4422-97d1-16ad63c24816\"><title>his floor</title><length>83000</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"7cd3e324-1be9-4026-a9cb-b783c474c132\"><title>test</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"8a80f386-c321-43d0-b289-368d8df83127\"><title>test2</title><length>1346</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"9a8168c1-7475-42ea-89e5-ec306b660b6c\"><title>Please Mister Nagios</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"a2af846a-93a1-4ea8-ab36-0ef005209bd1\"><title>asdfdsf</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"c34260fc-8b4c-4ce6-a0dd-9001c05ee029\"><title>test11</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"e7e0cb25-ee2d-4cb9-85fe-a2a9d213f20c\"><title>test1</title><length>1346</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"fbae3d07-69c3-4f00-a1ef-c99f0da54127\"><title>track #1</title><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording><recording id=\"fd4d253f-ea0f-4ba3-8e18-d861e49b06ac\"><title>\330\250\330\247\331\204\330\263\331\203\331\210\330\252 (\330\261\331\212\331\205\331\203\330\263)</title><length>234000</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording></recording-list><release-list count=\"0\"></release-list><release-group-list count=\"3\"><release-group type=\"Other\" id=\"7f1c3043-e164-464a-9131-10ac49011fab\"><title>License Placeholder</title><first-release-date>2011-12-09</first-release-date><primary-type>Other</primary-type><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></release-group><release-group id=\"da7b4220-4c8b-498b-bf78-5a035e445dd3\"><title>TEST</title><first-release-date></first-release-date><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></release-group><release-group type=\"Other\" id=\"e916d4bf-8e8f-3107-ab4a-4c3774e23990\"><title>Nagios Check Release</title><first-release-date>1920</first-release-date><primary-type>Other</primary-type><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></release-group></release-group-list><work-list count=\"9\"><work id=\"339ed331-2bdf-3208-850e-c86095ba9c23\"><title>One</title></work><work id=\"3adefdb4-d787-3d09-a288-14eaee8d637d\"><title>3 on Duplicate</title></work><work id=\"493c57fd-b85c-3a90-9129-b2a99c48095c\"><title>Oh, I\'m sorry! Did I break your concentration? (Jules)</title></work><work id=\"580b213e-3537-30da-ba5d-78228aeb66ba\"><title>test11</title></work><work id=\"6e83781f-a84c-3674-9948-c7951bea0dc0\"><title>test1</title></work><work id=\"895704ca-b6d3-374f-aa98-56fbea9643a2\"><title>Track 1</title></work><work id=\"a653cd7a-787f-425f-9b54-c254733e3ebb\"><title>test\342\200\246</title></work><work id=\"c18dc2be-0312-3dad-a1ca-7c7989e887e8\"><title>Signature Test (Johan speaking)</title></work><work id=\"cb9dc791-0c74-3c57-868b-341b074973f4\"><title>Track 1</title></work></work-list><relation-list target-type=\"recording\"><relation type=\"instrument\"><target>7be53912-f01d-4422-97d1-16ad63c24816</target><attribute-list><attribute>vacuum cleaner</attribute></attribute-list><recording id=\"7be53912-f01d-4422-97d1-16ad63c24816\"><title>his floor</title><length>83000</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording></relation></relation-list><relation-list target-type=\"work\"><relation type=\"writer\"><target>339ed331-2bdf-3208-850e-c86095ba9c23</target><work id=\"339ed331-2bdf-3208-850e-c86095ba9c23\"><title>One</title></work></relation><relation type=\"librettist\"><target>895704ca-b6d3-374f-aa98-56fbea9643a2</target><attribute-list><attribute>translated</attribute></attribute-list><work id=\"895704ca-b6d3-374f-aa98-56fbea9643a2\"><title>Track 1</title></work></relation></relation-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Type], @"Other", @"%@ != Other", [entity Type]);
  STAssertEqualStrings([entity Id], @"7e84f845-ac16-41fe-9ff8-df12eb32af55", @"%@ != 7e84f845-ac16-41fe-9ff8-df12eb32af55", [entity Id]);
  STAssertEqualStrings([entity Name], @"MusicBrainz Test Artist", @"%@ != MusicBrainz Test Artist", [entity Name]);
  STAssertEqualStrings([entity SortName], @"MusicBrainz Test Artist", @"%@ != MusicBrainz Test Artist", [entity SortName]);
  STAssertEqualStrings([entity Disambiguation], @"Special Purpose Artist - MusicBrainz Test Artist", @"%@ != Special Purpose Artist - MusicBrainz Test Artist", [entity Disambiguation]);
  STAssertNotNil([entity LifeSpan], @"LifeSpan is nil");
  [self runLifeSpan:[entity LifeSpan]];
  STAssertNotNil([entity AliasList], @"AliasList is nil");
  [self runAliasList:[entity AliasList]];
  STAssertNotNil([entity RecordingList], @"RecordingList is nil");
  [self runRecordingList:[entity RecordingList]];
  STAssertNotNil([entity ReleaseList], @"ReleaseList is nil");
  [self runReleaseList:[entity ReleaseList]];
  STAssertNotNil([entity ReleaseGroupList], @"ReleaseGroupList is nil");
  [self runReleaseGroupList:[entity ReleaseGroupList]];
  STAssertNotNil([entity WorkList], @"WorkList is nil");
  [self runWorkList:[entity WorkList]];
  STAssertNotNil([entity RelationList], @"RelationList is nil");
  [self runRelationList:[entity RelationList]];
  STAssertNotNil([entity RelationList], @"RelationList is nil");
  [self runRelationList:[entity RelationList]];
  STAssertNotNil([entity TagList], @"TagList is nil");
  [self runTagList:[entity TagList]];
  STAssertNotNil([entity UserTagList], @"UserTagList is nil");
  [self runUserTagList:[entity UserTagList]];
  STAssertNotNil([entity Rating], @"Rating is nil");
  [self runRating:[entity Rating]];
  STAssertNotNil([entity UserRating], @"UserRating is nil");
  [self runUserRating:[entity UserRating]];
  
  [self runArtist:entity];
}

- (void) testArtist2 {
  NSString * xmlString = @"<artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Id], @"7e84f845-ac16-41fe-9ff8-df12eb32af55", @"%@ != 7e84f845-ac16-41fe-9ff8-df12eb32af55", [entity Id]);
  STAssertEqualStrings([entity Name], @"MusicBrainz Test Artist", @"%@ != MusicBrainz Test Artist", [entity Name]);
  STAssertEqualStrings([entity SortName], @"MusicBrainz Test Artist", @"%@ != MusicBrainz Test Artist", [entity SortName]);
  STAssertEqualStrings([entity Disambiguation], @"Special Purpose Artist - MusicBrainz Test Artist", @"%@ != Special Purpose Artist - MusicBrainz Test Artist", [entity Disambiguation]);
  STAssertNotNil([entity AliasList], @"AliasList is nil");
  [self runAliasList:[entity AliasList]];
  STAssertNotNil([entity TagList], @"TagList is nil");
  [self runTagList:[entity TagList]];
  STAssertNotNil([entity UserTagList], @"UserTagList is nil");
  [self runUserTagList:[entity UserTagList]];
  STAssertNotNil([entity Rating], @"Rating is nil");
  [self runRating:[entity Rating]];
  STAssertNotNil([entity UserRating], @"UserRating is nil");
  [self runUserRating:[entity UserRating]];
  
  [self runArtist:entity];
}

- (void) testTitle1 {
  NSString * xmlString = @"<title>One</title>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"One", @"%@ != One", [entity Text]);
  
  [self runTitle:entity];
}

- (void) testTitle2 {
  NSString * xmlString = @"<title>1</title>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualObjects([entity Text], @1, @"%@ != 1", [entity Text]);
  STAssertEqualStrings([entity Text], @"1", @"%@ != 1", [entity Text]);
  
  [self runTitle:entity];
}

- (void) testTitle3 {
  NSString * xmlString = @"<title>test2</title>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"test2", @"%@ != test2", [entity Text]);
  
  [self runTitle:entity];
}

- (void) testTitle4 {
  NSString * xmlString = @"<title>Please Mister Nagios</title>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"Please Mister Nagios", @"%@ != Please Mister Nagios", [entity Text]);
  
  [self runTitle:entity];
}

- (void) testTitle5 {
  NSString * xmlString = @"<title>track #1</title>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"track #1", @"%@ != track #1", [entity Text]);
  
  [self runTitle:entity];
}

- (void) testTitle6 {
  NSString * xmlString = @"<title>Signature Test (Johan speaking)</title>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"Signature Test (Johan speaking)", @"%@ != Signature Test (Johan speaking)", [entity Text]);
  
  [self runTitle:entity];
}

- (void) testTitle7 {
  NSString * xmlString = @"<title>\330\250\330\247\331\204\330\263\331\203\331\210\330\252 (\330\261\331\212\331\205\331\203\330\263)</title>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"\330\250\330\247\331\204\330\263\331\203\331\210\330\252 (\330\261\331\212\331\205\331\203\330\263)", @"%@ != \330\250\330\247\331\204\330\263\331\203\331\210\330\252 (\330\261\331\212\331\205\331\203\330\263)", [entity Text]);
  
  [self runTitle:entity];
}

- (void) testTitle8 {
  NSString * xmlString = @"<title>test\342\200\246</title>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"test\342\200\246", @"%@ != test\342\200\246", [entity Text]);
  
  [self runTitle:entity];
}

- (void) testTitle9 {
  NSString * xmlString = @"<title>te.. aw forget it</title>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"te.. aw forget it", @"%@ != te.. aw forget it", [entity Text]);
  
  [self runTitle:entity];
}

- (void) testTitle10 {
  NSString * xmlString = @"<title>4</title>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualObjects([entity Text], @4, @"%@ != 4", [entity Text]);
  STAssertEqualStrings([entity Text], @"4", @"%@ != 4", [entity Text]);
  
  [self runTitle:entity];
}

- (void) testTitle11 {
  NSString * xmlString = @"<title>asdfdsf</title>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"asdfdsf", @"%@ != asdfdsf", [entity Text]);
  
  [self runTitle:entity];
}

- (void) testTitle12 {
  NSString * xmlString = @"<title>his floor</title>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"his floor", @"%@ != his floor", [entity Text]);
  
  [self runTitle:entity];
}

- (void) testTitle13 {
  NSString * xmlString = @"<title>test</title>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"test", @"%@ != test", [entity Text]);
  
  [self runTitle:entity];
}

- (void) testTitle14 {
  NSString * xmlString = @"<title>Track 1</title>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"Track 1", @"%@ != Track 1", [entity Text]);
  
  [self runTitle:entity];
}

- (void) testTitle15 {
  NSString * xmlString = @"<title>2</title>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualObjects([entity Text], @2, @"%@ != 2", [entity Text]);
  STAssertEqualStrings([entity Text], @"2", @"%@ != 2", [entity Text]);
  
  [self runTitle:entity];
}

- (void) testTitle16 {
  NSString * xmlString = @"<title>TEST</title>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"TEST", @"%@ != TEST", [entity Text]);
  
  [self runTitle:entity];
}

- (void) testTitle17 {
  NSString * xmlString = @"<title>Nagios Check Release</title>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"Nagios Check Release", @"%@ != Nagios Check Release", [entity Text]);
  
  [self runTitle:entity];
}

- (void) testTitle18 {
  NSString * xmlString = @"<title>test11</title>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"test11", @"%@ != test11", [entity Text]);
  
  [self runTitle:entity];
}

- (void) testTitle19 {
  NSString * xmlString = @"<title>%track</title>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"%track", @"%@ != %track", [entity Text]);
  
  [self runTitle:entity];
}

- (void) testTitle20 {
  NSString * xmlString = @"<title>5</title>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualObjects([entity Text], @5, @"%@ != 5", [entity Text]);
  STAssertEqualStrings([entity Text], @"5", @"%@ != 5", [entity Text]);
  
  [self runTitle:entity];
}

- (void) testTitle21 {
  NSString * xmlString = @"<title>Oh, I\'m sorry! Did I break your concentration? (Jules)</title>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"Oh, I\'m sorry! Did I break your concentration? (Jules)", @"%@ != Oh, I\'m sorry! Did I break your concentration? (Jules)", [entity Text]);
  
  [self runTitle:entity];
}

- (void) testTitle22 {
  NSString * xmlString = @"<title>track #2</title>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"track #2", @"%@ != track #2", [entity Text]);
  
  [self runTitle:entity];
}

- (void) testTitle23 {
  NSString * xmlString = @"<title>3</title>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualObjects([entity Text], @3, @"%@ != 3", [entity Text]);
  STAssertEqualStrings([entity Text], @"3", @"%@ != 3", [entity Text]);
  
  [self runTitle:entity];
}

- (void) testTitle24 {
  NSString * xmlString = @"<title>test1</title>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"test1", @"%@ != test1", [entity Text]);
  
  [self runTitle:entity];
}

- (void) testTitle25 {
  NSString * xmlString = @"<title>taesting blah-blah ss aa \303\266</title>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"taesting blah-blah ss aa \303\266", @"%@ != taesting blah-blah ss aa \303\266", [entity Text]);
  
  [self runTitle:entity];
}

- (void) testTitle26 {
  NSString * xmlString = @"<title>License Placeholder</title>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"License Placeholder", @"%@ != License Placeholder", [entity Text]);
  
  [self runTitle:entity];
}

- (void) testTitle27 {
  NSString * xmlString = @"<title>test3</title>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"test3", @"%@ != test3", [entity Text]);
  
  [self runTitle:entity];
}

- (void) testTitle28 {
  NSString * xmlString = @"<title>3 on Duplicate</title>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"3 on Duplicate", @"%@ != 3 on Duplicate", [entity Text]);
  
  [self runTitle:entity];
}

- (void) testRelationList1 {
  NSString * xmlString = @"<relation-list target-type=\"recording\"><relation type=\"instrument\"><target>7be53912-f01d-4422-97d1-16ad63c24816</target><attribute-list><attribute>vacuum cleaner</attribute></attribute-list><recording id=\"7be53912-f01d-4422-97d1-16ad63c24816\"><title>his floor</title><length>83000</length><artist-credit><name-credit><artist id=\"7e84f845-ac16-41fe-9ff8-df12eb32af55\"><name>MusicBrainz Test Artist</name><sort-name>MusicBrainz Test Artist</sort-name><disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation><alias-list count=\"12\"><alias sort-name=\"MB Test Artist\">MB Test Artist</alias><alias sort-name=\"Move for Great speed Testing\">Move for Great speed Testing</alias><alias sort-name=\"MusicBrainz Test Artist Frobozz\">MusicBrainz Test Artist Frobozz</alias><alias sort-name=\"MusicBrainz Test Artist Qwlghm\">MusicBrainz Test Artist Qwlghm</alias><alias sort-name=\"Qwlghm\">Qwlghm</alias><alias sort-name=\"Tedious Test Artist\">Tedious Test Artist</alias><alias sort-name=\"Testing Artist\">Testing Artist</alias><alias sort-name=\"Testings Artist\">Testings Artist</alias><alias sort-name=\"Yet another tedious test artist\">Yet another tedious test artist</alias><alias sort-name=\"testalias\">testalias</alias><alias sort-name=\"yatta!\">yatta!</alias><alias sort-name=\"\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266\">\343\203\206\343\202\271\343\203\210\350\212\270\350\241\223\345\256\266</alias></alias-list><tag-list><tag count=\"1\"><name>another tag</name></tag><tag count=\"1\"><name>for testing</name></tag><tag count=\"3\"><name>moose</name></tag><tag count=\"1\"><name>musicbrainz</name></tag><tag count=\"1\"><name>musicbrainz test artist</name></tag><tag count=\"1\"><name>special purpose artist</name></tag><tag count=\"1\"><name>special purpose musicbrainz</name></tag><tag count=\"5\"><name>test</name></tag><tag count=\"1\"><name>test metal</name></tag><tag count=\"2\"><name>test tag</name></tag><tag count=\"1\"><name>test2</name></tag><tag count=\"1\"><name>\340\274\200 \343\204\226 \346\260\206 \346\261\207 \351\275\252 test stuff</name></tag></tag-list><user-tag-list><user-tag><name>test</name></user-tag></user-tag-list><rating votes-count=\"6\">4</rating><user-rating>4</user-rating></artist></name-credit></artist-credit></recording></relation></relation-list>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity TargetType], @"recording", @"%@ != recording", [entity TargetType]);
  STAssertEqualObjects([entity Count], @1, @"%@ != 1", [entity Count]);
  
  [self runRelationList:entity];
}

- (void) testRelationList2 {
  NSString * xmlString = @"<relation-list target-type=\"work\"><relation type=\"writer\"><target>339ed331-2bdf-3208-850e-c86095ba9c23</target><work id=\"339ed331-2bdf-3208-850e-c86095ba9c23\"><title>One</title></work></relation><relation type=\"librettist\"><target>895704ca-b6d3-374f-aa98-56fbea9643a2</target><attribute-list><attribute>translated</attribute></attribute-list><work id=\"895704ca-b6d3-374f-aa98-56fbea9643a2\"><title>Track 1</title></work></relation></relation-list>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity TargetType], @"work", @"%@ != work", [entity TargetType]);
  STAssertEqualObjects([entity Count], @2, @"%@ != 2", [entity Count]);
  
  [self runRelationList:entity];
}

- (void) testDisambiguation1 {
  NSString * xmlString = @"<disambiguation>test</disambiguation>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"test", @"%@ != test", [entity Text]);
  
  [self runDisambiguation:entity];
}

- (void) testDisambiguation2 {
  NSString * xmlString = @"<disambiguation>Special Purpose Artist - MusicBrainz Test Artist</disambiguation>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"Special Purpose Artist - MusicBrainz Test Artist", @"%@ != Special Purpose Artist - MusicBrainz Test Artist", [entity Text]);
  
  [self runDisambiguation:entity];
}

- (void) testDisambiguation3 {
  NSString * xmlString = @"<disambiguation>test_</disambiguation>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"test_", @"%@ != test_", [entity Text]);
  
  [self runDisambiguation:entity];
}

- (void) testRating1 {
  NSString * xmlString = @"<rating votes-count=\"6\">4</rating>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity VotesCount], @"6", @"%@ != 6", [entity VotesCount]);
  STAssertEqualObjects([entity Text], @4, @"%@ != 4", [entity Text]);
  STAssertEqualStrings([entity Text], @"4", @"%@ != 4", [entity Text]);
  
  [self runRating:entity];
}

- (void) testEnded1 {
  NSString * xmlString = @"<ended>true</ended>";
  NSError * error;
  NSXMLElement * element = [[NSXMLElement alloc] initWithXMLString:xmlString error:&error];
  STAssertNil(error, @"error => %@", error);
  id entity = [MBEntity entityWithElement:element];
  STAssertNotNil(entity, @"entity is nil");
  STAssertEqualStrings([entity Text], @"true", @"%@ != true", [entity Text]);
  
  [self runEnded:entity];
}

@end

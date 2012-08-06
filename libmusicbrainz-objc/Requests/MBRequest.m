//
// @file MBQuery.m
// @date Jul 02 2012
// @copyright
//   2012 Brandon LeBlanc <demosdemon@gmail.com> \n
//   This program is made avaliable under the terms of the MIT License.
//
// @brief Webservice request object

#if ! __has_feature(objc_arc)
# warning This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif

#import "MB.h"

extern NSString * MBEntityToNSString(MBEntityType type)
{
  switch (type) {
    case MBEntityArtist:
      return @"artist";
    case MBEntityCollection:
      return @"collection";
    case MBEntityDiscid:
      return @"discid";
    case MBEntityIsrc:
      return @"isrc";
    case MBEntityIswc:
      return @"iswc";
    case MBEntityLabel:
      return @"label";
    case MBEntityPuid:
      return @"puid";
    case MBEntityRating:
      return @"rating";
    case MBEntityRecording:
      return @"recording";
    case MBEntityRelease:
      return @"release";
    case MBEntityReleaseGroup:
      return @"release-group";
    case MBEntityTag:
      return @"tag";
    case MBEntityWork:
      return @"work";
    default:
      return @"";
  }
}
extern NSArray * MBIncParameterToNSStringArray(MBIncParameterType type)
{
  __autoreleasing NSMutableArray * retval = [NSMutableArray array];
  if (type & MBIncParameterAliases)
    [retval addObject:@"aliases"];
  if (type & MBIncParameterArtistCredits)
    [retval addObject:@"artist-credits"];
  if (type & MBIncParameterArtistRels)
    [retval addObject:@"artist-rels"];
  if (type & MBIncParameterArtists)
    [retval addObject:@"artists"];
  if (type & MBIncParameterDiscids)
    [retval addObject:@"discids"];
  if (type & MBIncParameterIsrcs)
    [retval addObject:@"isrcs"];
  if (type & MBIncParameterLabelRels)
    [retval addObject:@"label-rels"];
  if (type & MBIncParameterLabels)
    [retval addObject:@"labels"];
  if (type & MBIncParameterMedia)
    [retval addObject:@"media"];
  if (type & MBIncParameterPuids)
    [retval addObject:@"puids"];
  if (type & MBIncParameterRatings)
    [retval addObject:@"ratings"];
  if (type & MBIncParameterRecordingLevelRels)
    [retval addObject:@"recording-level-rels"];
  if (type & MBIncParameterRecordingRels)
    [retval addObject:@"recording-rels"];
  if (type & MBIncParameterRecordings)
    [retval addObject:@"recordings"];
  if (type & MBIncParameterReleaseGroupRels)
    [retval addObject:@"release-group-rels"];
  if (type & MBIncParameterReleaseGroups)
    [retval addObject:@"release-groups"];
  if (type & MBIncParameterReleaseRels)
    [retval addObject:@"release-rels"];
  if (type & MBIncParameterReleases)
    [retval addObject:@"releases"];
  if (type & MBIncParameterTags)
    [retval addObject:@"tags"];
  if (type & MBIncParameterUrlRels)
    [retval addObject:@"url-rels"];
  if (type & MBIncParameterUserRatings)
    [retval addObject:@"user-ratings"];
  if (type & MBIncParameterUserTags)
    [retval addObject:@"user-tags"];
  if (type & MBIncParameterVariousArtists)
    [retval addObject:@"various-artists"];
  if (type & MBIncParameterWorkLevelRels)
    [retval addObject:@"work-level-rels"];
  if (type & MBIncParameterWorkRels)
    [retval addObject:@"work-rels"];
  if (type & MBIncParameterWorks)
    [retval addObject:@"works"];
  return [NSArray arrayWithArray:retval];
}

@implementation MBRequest

- (id) init
{
  if (self = [super init]) {
    _Parameters = [NSMutableDictionary dictionary];
  }
  return self;
}

@synthesize RequestMethod = _RequestMethod;

- (void) setParameter:(NSString *)value forKey:(NSString *)key
{ [_Parameters setObject:[value copy] forKey:key]; }
- (void) removeParameterForKey:(NSString *)key
{ [_Parameters removeObjectForKey:key]; }
- (NSString *) getParameterForKey:(NSString *)key
{ [[_Parameters objectForKey:key] copy]; }

- (NSString *) url
{ return @""; }

- (NSString *) parameterString
{
  __block NSMutableArray * parameters = [NSMutableArray array];
  [_Parameters enumerateKeysAndObjectsUsingBlock:^(NSString * key, NSString * value, BOOL *stop) {
    [parameters addObject:[NSString stringWithFormat:@"%@=%@",
                           [key stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding],
                           [value stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding]]];
  }];
  return [parameters componentsJoinedByString:@"&"];
}

+ (MBBarcodeSubmissionRequest *) addBarcode:(NSString *)barcode
                                 forRelease:(MBRelease *)release
{
  MBBarcodeSubmissionRequest * retval = [[MBBarcodeSubmissionRequest alloc] init];
  [retval addBarcode:barcode forRelease:release];
  return retval;
}

+ (MBBarcodeSubmissionRequest *) addBarcodes:(NSArray *)barcodes
                                 forReleases:(NSArray *)releases
{
  if (barcodes.count != releases.count) return nil;
  __block MBBarcodeSubmissionRequest * retval = [[MBBarcodeSubmissionRequest alloc] init];

  [releases enumerateObjectsUsingBlock:^(MBRelease * release, NSUInteger idx, BOOL *stop) {
    id _barcodes = [barcodes objectAtIndex:idx];
    if ([_barcodes isKindOfClass:[NSString class]])
      [retval addBarcode:_barcodes forRelease:release];
    else if ([_barcodes isKindOfClass:[NSArray class]])
      [(NSArray*)_barcodes enumerateObjectsUsingBlock:^(NSString * barcode, NSUInteger idx, BOOL *stop) {
        [retval addBarcode:barcode forRelease:release];
      }];
    else {
      *stop = YES;
      retval = nil;
    }
  }];

  return retval;
}

+ (MBDeleteRequest *) deleteRelease:(MBRelease *)release
                     fromCollection:(MBCollection *)collection
{
  MBDeleteRequest * retval = [[MBDeleteRequest alloc] init];
  [retval setCollection:collection];
  [retval addRelease:release];
  return retval;
}

+ (MBDeleteRequest *) deleteReleases:(NSArray *)releases
                      fromCollection:(MBCollection *)collection
{
  __block MBDeleteRequest * retval = [[MBDeleteRequest alloc] init];
  [retval setCollection:collection];
  [releases enumerateObjectsUsingBlock:^(MBRelease * release, NSUInteger idx, BOOL *stop) {
    [retval addRelease:release];
  }];
  return retval;
}

+ (MBPutRequest *) addRelease:(MBRelease *)release
                 toCollection:(MBCollection *)collection
{
  MBPutRequest * retval = [[MBPutRequest alloc] init];
  [retval setCollection:collection];
  [retval addRelease:release];
  return retval;
}

+ (MBPutRequest *) addReleases:(NSArray *)releases
                  toCollection:(MBCollection *)collection
{
  __block MBPutRequest * retval = [[MBPutRequest alloc] init];
  [retval setCollection:collection];
  [releases enumerateObjectsUsingBlock:^(MBRelease * release, NSUInteger idx, BOOL *stop) {
    [retval addRelease:release];
  }];
  return retval;
}

+ (MBIsrcSubmissionRequest *) addIsrc:(NSString *)isrc
                          toRecording:(MBRecording *)recording
{
  MBIsrcSubmissionRequest * retval = [[MBIsrcSubmissionRequest alloc] init];
  [retval addIsrc:isrc toRecording:recording];
  return retval;
}

+ (MBIsrcSubmissionRequest *) addIsrcs:(NSArray *)isrcs
                          toRecordings:(NSArray *)recordings
{
  if (isrcs.count != recordings.count) return nil;
  __block MBIsrcSubmissionRequest * retval = [[MBIsrcSubmissionRequest alloc] init];

  [recordings enumerateObjectsUsingBlock:^(MBRecording * recording, NSUInteger idx, BOOL *stop) {
    id _isrcs = [isrcs objectAtIndex:idx];
    if ([_isrcs isKindOfClass:[NSString class]])
      [retval addIsrc:_isrcs toRecording:recording];
    else if ([_isrcs isKindOfClass:[NSArray class]])
      [(NSArray*)_isrcs enumerateObjectsUsingBlock:^(NSString * isrc, NSUInteger idx, BOOL *stop) {
        [retval addIsrc:isrc toRecording:recording];
      }];
    else {
      *stop = YES;
      retval = nil;
    }
  }];

  return retval;
}

+ (MBPuidSubmissionRequest *) addPuid:(NSString *)puid
                          toRecording:(MBRecording *)recording
{
  MBPuidSubmissionRequest * retval = [[MBPuidSubmissionRequest alloc] init];
  [retval addPuid:puid toRecording:recording];
  return retval;
}

+ (MBPuidSubmissionRequest *) addPuids:(NSArray *)puids
                          toRecordings:(NSArray *)recordings
{
  if (puids.count != recordings.count) return nil;
  __block MBPuidSubmissionRequest * retval = [[MBPuidSubmissionRequest alloc] init];

  [recordings enumerateObjectsUsingBlock:^(MBRecording * recording, NSUInteger idx, BOOL *stop) {
    id _puids = [puids objectAtIndex:idx];
    if ([_puids isKindOfClass:[NSString class]])
      [retval addPuid:_puids toRecording:recording];
    else if ([_puids isKindOfClass:[NSArray class]])
      [(NSArray*)_puids enumerateObjectsUsingBlock:^(NSString * puid, NSUInteger idx, BOOL *stop) {
        [retval addPuid:puid toRecording:recording];
      }];
    else {
      *stop = YES;
      retval = nil;
    }
  }];

  return retval;
}

+ (MBRatingSubmissionRequest *) addRating:(NSNumber *)rating
                                 toEntity:(MBRateAndTaggableEntity *)entity
{
  MBRatingSubmissionRequest * retval = [[MBRatingSubmissionRequest alloc] init];
  [retval setUserRating:[rating unsignedIntegerValue] forEntity:entity];
  return retval;
}

+ (MBRatingSubmissionRequest *) addRating:(NSArray *)ratings
                               toEntities:(NSArray *)entities
{
  if (ratings.count != entities.count) return nil;
  __block MBRatingSubmissionRequest * retval = [[MBRatingSubmissionRequest alloc] init];
  [entities enumerateObjectsUsingBlock:^(MBRateAndTaggableEntity * entity, NSUInteger idx, BOOL *stop) {
    NSNumber * rating = [ratings objectAtIndex:idx];
    [retval setUserRating:[rating unsignedIntegerValue] forEntity:entity];
  }];
  return retval;
}

+ (MBTagSubmissionRequest *) addTag:(NSString *)tag
                           toEntity:(MBRateAndTaggableEntity *)entity
{
  MBTagSubmissionRequest * retval = [[MBTagSubmissionRequest alloc] init];
  [retval addUserTag:tag toEntity:entity];
  return retval;
}

+ (MBTagSubmissionRequest *) addTags:(NSArray *)tags
                          toEntities:(NSArray *)entities
{
  if (tags.count != entities.count) return nil;
  __block MBTagSubmissionRequest * retval = [[MBTagSubmissionRequest alloc] init];

  [entities enumerateObjectsUsingBlock:^(MBRateAndTaggableEntity * entity, NSUInteger idx, BOOL *stop) {
    id _tags = [tags objectAtIndex:idx];
    if ([_tags isKindOfClass:[NSString class]])
      [retval addUserTag:_tags toEntity:entity];
    else if ([_tags isKindOfClass:[NSArray class]])
      [(NSArray*)_tags enumerateObjectsUsingBlock:^(NSString * tag, NSUInteger idx, BOOL *stop) {
        [retval addUserTag:tag toEntity:entity];
      }];
    else {
      *stop = YES;
      retval = nil;
    }
  }];

  return retval;
}

+ (MBGetRequest *) lookupWithEntity:(MBEntityType) entity
                               mbid:(NSString*)mbid
                      incParameters:(MBIncParameterType) incs
{
  MBGetRequest * retval = [[MBGetRequest alloc] init];
  retval.RequestType = MBRequestLookup;
  retval.EntityType = MBEntityToNSString(entity);
  retval.EntityId = mbid;
  for (NSString * inc in MBIncParameterToNSStringArray(incs))
    [retval addIncParameterObject:inc];
  return retval;
}

+ (MBGetRequest *) browseForEntity:(MBEntityType) entity
                        withEntity:(MBEntityType) type
                              mbid:(NSString*)mbid
                             limit:(NSNumber*)limit
                            offset:(NSNumber*)offset
                     incParameters:(MBIncParameterType) incs
{
  MBGetRequest * retval = [[MBGetRequest alloc] init];
  retval.RequestType = MBRequestBrowse;
  retval.EntityType = MBEntityToNSString(entity);
  retval.Limit = limit;
  retval.Offset = offset;
  [retval setParameter:mbid forKey:MBEntityToNSString(type)];
  for (NSString * inc in MBIncParameterToNSStringArray(incs))
    [retval addIncParameterObject:inc];
  return retval;
}

+ (MBGetRequest *) searchForEntity:(MBEntityType) entity
                             query:(NSString*)query
                             limit:(NSNumber*)limit
                            offset:(NSNumber*)offset
{
  MBGetRequest * retval = [[MBGetRequest alloc] init];
  retval.RequestType = MBRequestSearch;
  retval.EntityType = MBEntityToNSString(entity);
  [retval setParameter:query forKey:@"query"];
  return retval;
}

@end

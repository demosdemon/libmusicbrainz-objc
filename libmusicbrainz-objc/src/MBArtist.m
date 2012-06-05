/// 
/// @file MBArtist.m
/// @author Jens Lukas
/// @date Jun 22 2010
/// @author Joachim LeBlanc
/// @copyright 
///   2010 Jens Lukas <contact@jenslukas.com> \n
///   2012 Joachim LeBlanc <demosdemon@gmail.com> \n
///   This program is made available under the terms of the MIT License.
///
/// @brief Artist entity

#import "MBArtist.h"
#import "MBEntity-protected.h"

const NSString *             kTypeKey = @"@type";
const NSString *               kIdKey = @"@id";
const NSString *             kNameKey = @"name";
const NSString *         kSortNameKey = @"sort-name";
const NSString *           kGenderKey = @"gender";
const NSString *          kCountryKey = @"country";
const NSString *   kDisambiguationKey = @"disambiguation";
//const NSString *              kIpiKey = @"ipi";
const NSString *          kIpiListKey = @"ipi-list";
const NSString *         kLifeSpanKey = @"life-span";
const NSString *        kAliasListKey = @"alias-list";
const NSString *    kRecordingListKey = @"recording-list";
const NSString *      kReleaseListKey = @"release-list";
const NSString * kReleaseGroupListKey = @"release-group-list";
const NSString *        kLabelListKey = @"label-list";
const NSString *         kWorkListKey = @"work-list";
const NSString *    kRelationListsKey = @"relation-list";
const NSString *          kTagListKey = @"tag-list";
const NSString *      kUserTagListKey = @"user-tag-list";
const NSString *           kRatingKey = @"rating";
const NSString *       kUserRatingKey = @"user-rating";

@implementation MBArtist

- (NSString *) Id {
  return [_dict objectForKey:kIdKey];
}

- (NSString *) Type {
  return [_dict objectForKey:kTypeKey];
}

- (NSString *) Name {
  return [_dict objectForKey:kNameKey];
}

- (NSString *) SortName {
  return [_dict objectForKey:kSortNameKey];
}

- (NSString *) Gender {
  return [_dict objectForKey:kGenderKey];
}

- (NSString *) Country {
  return [_dict objectForKey:kCountryKey];
}

- (NSString *) Disambiguation {
  return [_dict objectForKey:kDisambiguationKey];
}

- (NSArray *) IPIList {
  return [self list:[_dict objectForKey:kIpiListKey] type:[MBIPI class]];
}

- (MBLifeSpan *) Lifespan {
  return [[MBLifeSpan alloc] initWithDict:[_dict objectForKey:kLifeSpanKey]];
}

- (NSArray *) AliasList {
  return [self list:[_dict objectForKey:kAliasListKey] type:[MBAlias class]];
}

- (NSArray *) RecordingList {
  return [self list:[_dict objectForKey:kAliasListKey] type:[MBRecording class]];
}

- (NSArray *) ReleaseList {
  return [self list:[_dict objectForKey:kAliasListKey] type:[MBRelease class]];
}

- (NSArray *) ReleaseGroupList {
  return [self list:[_dict objectForKey:kAliasListKey] type:[MBReleaseGroup class]];
}

- (NSArray *) LabelList {
  return [self list:[_dict objectForKey:kAliasListKey] type:[MBLabel class]];
}

- (NSArray *) WorkList {
  return [self list:[_dict objectForKey:kAliasListKey] type:[MBWork class]];
}

- (NSArray *) RelationListList {
  //return [self list:[_dict objectForKey:kAliasListKey] type:[ class]];
}

- (NSArray *) TagList {
  return [self list:[_dict objectForKey:kAliasListKey] type:[MBTag class]];
}

- (NSArray *) UserTagList {
  return [self list:[_dict objectForKey:kAliasListKey] type:[MBUserTag class]];
}

- (MBRating *) Rating {
  return [[MBRating alloc] initWithDict:[_dict objectForKey:kRatingKey]]
}

@end

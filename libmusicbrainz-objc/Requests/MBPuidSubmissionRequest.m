//
// MBPuidSubmissionRequest.m
// libmusicbrainz-objc
//
// Created by Joachim LeBlanc on 7/16/12.
// Copyright (c) 2012.
// This program is made available under the terms of the MIT License.
//

#import "MB.h"
#import "MBPuidSubmissionRequest.h"

@implementation MBPuidSubmissionRequest 

- (id) init
{
  if (self = [super init]) {
    _EntityType = @"recording";
    _Puids = [NSMutableDictionary dictionary];
  }
  return self;
}

- (void) addPuid:(NSString *)puid toRecording:(MBRecording *)recording
{
  NSString * recordingId = recording.Id;
  NSMutableSet * puids = [_Puids objectForKey:recordingId];
  if (!puids) puids = [NSMutableSet set];

  [puids addObject:[puid copy]];
  [_Puids setObject:puids forKey:recordingId];
}

- (void) removePuid:(NSString *)puid fromRecording:(MBRecording *)recording
{
  NSString * recordingId = recording.Id;
  NSMutableSet * puids = [_Puids objectForKey:recordingId];
  if (!puids) return;

  [puids removeObject:puid];
  if (puids.count > 0)
    [_Puids setObject:puids forKey:recordingId];
  else
    [_Puids removeObjectForKey:recordingId];
}

- (NSArray *) getPuidsForRecording:(MBRecording *)recording
{
  NSMutableSet * set = [_Puids objectForKey:recording.Id];
  if (!set) return [NSArray array];
  else return [[set allObjects] copy];
}

- (NSData *) postdata
{
  NSXMLElement * metadata = [NSXMLElement elementWithName:@"metadata"];
  NSXMLNode * xmlns = [NSXMLNode attributeWithName:@"xmlns" stringValue:@"http://musicbrainz.org/ns/mmd-2.0#"];
  [metadata addAttribute:xmlns];

  __block NSXMLElement * recordingList = [NSXMLElement elementWithName:@"recording-list"];
  [_Puids enumerateKeysAndObjectsUsingBlock:^(NSString * recordingId, NSSet * puids, BOOL *stop) {
    NSXMLElement * recording = [NSXMLElement elementWithName:@"recording"];
    [recording addAttribute:[NSXMLNode attributeWithName:@"id" stringValue:recordingId]];

    __block NSXMLElement * puidList = [NSXMLElement elementWithName:@"puid-list"];
    [[puids allObjects] enumerateObjectsUsingBlock:^(NSString * puidId, NSUInteger idx, BOOL *stop) {
      NSXMLElement * puid = [NSXMLElement elementWithName:@"puid"];
      [puid addAttribute:[NSXMLNode attributeWithName:@"id" stringValue:puidId]];
      [puidList addChild:puid];
    }];

    [recording addChild:puidList];
    [recordingList addChild:recording];
  }];

  [metadata addChild:recordingList];
  return [[metadata XMLString] dataUsingEncoding:NSUTF8StringEncoding];
}

@end

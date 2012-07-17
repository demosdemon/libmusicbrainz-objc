//
// MBIsrcSubmissionRequest.m
// libmusicbrainz-objc
//
// Created by Joachim LeBlanc on 7/16/12.
// Copyright (c) 2012.
// This program is made available under the terms of the MIT License.
//

#import "MB.h"
#import "MBIsrcSubmissionRequest.h"

@implementation MBIsrcSubmissionRequest

- (id) init
{
  if (self = [super init]) {
    _EntityType = @"recording";
    _Isrcs = [NSMutableDictionary dictionary];
  }
  return self;
}

- (void) addIsrc:(NSString *)isrc toRecording:(MBRecording *)recording
{
  NSString * Id = recording.Id;
  NSMutableSet * isrcList = [_Isrcs objectForKey:Id];
  if (!isrcList) isrcList = [NSMutableSet set];

  [isrcList addObject:[isrc copy]];
  
  [_Isrcs setObject:isrcList forKey:Id];
}

- (void) removeIsrc:(NSString *)isrc fromRecording:(MBRecording *)recording
{
  NSString * Id = recording.Id;
  NSMutableSet * isrcList = [_Isrcs objectForKey:Id];
  if (!isrcList) return;

  [isrcList removeObject:isrc];
  
  if (isrcList.count > 0)
    [_Isrcs setObject:isrcList forKey:Id];
  else
    [_Isrcs removeObjectForKey:Id];
}

- (NSArray *) getIsrcsForRecording:(MBRecording *)recording
{
  //return [[(NSMutableSet*)[_Isrcs objectForKey:recording.Id] allObjects] copy];
  NSMutableSet * set = [_Isrcs objectForKey:recording.Id];
  if (!set) return [NSArray array];
  else return [[set allObjects] copy];
}

- (NSData *) postdata
{
  NSXMLElement * metadata = [NSXMLElement elementWithName:@"metadata"];
  NSXMLNode * xmlns = [NSXMLNode attributeWithName:@"xmlns" stringValue:@"http://musicbrainz.org/ns/mmd-2.0#"];
  [metadata addAttribute:xmlns];

  __block NSXMLElement * recordingList = [NSXMLElement elementWithName:@"recording-list"];
  [_Isrcs enumerateKeysAndObjectsUsingBlock:^(NSString * recordingId, NSSet * isrcs, BOOL *stop) {
    NSXMLElement * recording = [NSXMLElement elementWithName:@"recording"];
    [recording addAttribute:[NSXMLNode attributeWithName:@"id" stringValue:recordingId]];

    __block NSXMLElement * isrcList = [NSXMLElement elementWithName:@"isrc-list"];
    [[isrcs allObjects] enumerateObjectsUsingBlock:^(NSString * isrcId, NSUInteger idx, BOOL *stop) {
      NSXMLElement * isrc = [NSXMLElement elementWithName:@"isrc"];
      [isrc addAttribute:[NSXMLNode attributeWithName:@"id" stringValue:isrcId]];
      [isrcList addChild:isrc];
    }];

    NSString * countString = [[NSNumber numberWithUnsignedInteger:isrcs.count] stringValue];
    NSXMLNode * count = [NSXMLNode attributeWithName:@"count" stringValue:countString];
    [isrcList addAttribute:count];
    
    [recording addChild:isrcList];
    [recordingList addChild:recording];
  }];

  [metadata addChild:recordingList];
  return [[metadata XMLString] dataUsingEncoding:NSUTF8StringEncoding];
}

@end

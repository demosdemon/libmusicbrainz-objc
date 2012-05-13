//
//  ReleaseGroup.h
//  Musicbrainz
//
//  Created by Jens Lukas on 7/25/10.
//  Copyright 2010 Jens Lukas <contact@jenslukas.com>
//
//  This program is made available under the terms of the MIT License.
//
//	Abstract: ReleaseGroup entity

#import <Foundation/Foundation.h>
#import	"RateAndTaggableEntity.h"

@interface ReleaseGroup : NSObject <RateAndTaggableEntity> {
	NSString *title;
	NSString *mbid;
	NSString *type;
	NSInteger votes;
	NSNumber *rating;
	NSMutableArray *releases;
}
@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *mbid;
@property (nonatomic, retain) NSString *type;
@property (nonatomic) NSInteger votes;
@property (nonatomic, retain) NSNumber *rating;
@property (nonatomic, retain) NSMutableArray *releases;
@end

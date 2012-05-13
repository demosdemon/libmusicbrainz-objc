//
//  Label.h
//  Musicbrainz
//
//  Created by Jens Lukas on 6/22/10.
//  Copyright 2010 Jens Lukas <contact@jenslukas.com>
//
//  This program is made available under the terms of the MIT License.
//
//	Abstract: Label Entity

#import <Foundation/Foundation.h>
#import "RateAndTaggableEntity.h"

@interface Label : NSObject <RateAndTaggableEntity> {
	NSString *mbid;
	NSString *type;
	NSString *name;
	NSInteger score;
	NSMutableArray *releases;
	NSNumber *rating;
	NSInteger votes;	
}

@property (nonatomic, retain) NSString *mbid;
@property (nonatomic, retain) NSString *type;
@property (nonatomic, retain) NSString *name;
@property (nonatomic) NSInteger score;
@property (nonatomic, retain) NSMutableArray *releases;
@property (nonatomic, retain) NSNumber *rating;
@property (nonatomic) NSInteger votes;
@end

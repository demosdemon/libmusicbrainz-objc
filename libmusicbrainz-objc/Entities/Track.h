//
//  Track.h
//  Musicbrainz
//
//  Created by Peter Katheter on 6/28/10.
//  Copyright 2010 Jens Lukas <contact@jenslukas.com>
//
//  This program is made available under the terms of the MIT License.
//
//	Abstract: Track Entity

#import <Foundation/Foundation.h>
#import "RateAndTaggableEntity.h"

@interface Track : NSObject <RateAndTaggableEntity> {
	NSString *mbid;
	NSInteger position;
	NSString *title;
	NSInteger length;
	NSInteger votes;
	NSNumber *rating;
}

@property (nonatomic, retain) NSString *mbid;
@property (nonatomic) NSInteger position;
@property (nonatomic, retain) NSString *title;
@property (nonatomic) NSInteger length;
@property (nonatomic) NSInteger votes;
@property (nonatomic, retain) NSNumber *rating;
@end

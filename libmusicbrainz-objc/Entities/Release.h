//
//  Release.h
//  Musicbrainz
//
//  Created by Jens Lukas on 6/7/10.
//  Copyright 2010 Jens Lukas <contact@jenslukas.com>
//
//  This program is made available under the terms of the MIT License.
//
//	Abstract: Release entity

#import <Foundation/Foundation.h>
#import "Label.h"

@interface Release : NSObject {
	@private
	NSString *mbid;
	NSString *title;
	NSInteger score;
	NSString *artist;
	NSString *date;
	NSMutableArray *tracks;
	Label *label;
}

@property (nonatomic, retain) NSString *mbid;
@property (nonatomic, retain) NSString *title;
@property (nonatomic) NSInteger score;
@property (nonatomic, retain) NSString *artist;
@property (nonatomic, retain) NSString *date;
@property (nonatomic, retain) NSMutableArray *tracks;
@property (nonatomic, retain) Label *label;
@end

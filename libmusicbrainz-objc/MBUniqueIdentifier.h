//
//  MBUniqueIdentifier.h
//  libmusicbrainz-objc
//
//  Created by Joachim LeBlanc on 7/16/12.
//
//

#import <Foundation/Foundation.h>

@protocol MBUniqueIdentifier <NSObject>
@required
@property (nonatomic, readonly) NSString * Id;
@end

//
//  NSDate+Formatting.h
//  SportSpyder
//
//  Created by Derek DeVries on 9/14/11.
//  Copyright 2011 SportSpyder. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSDate (formatting)

- (NSString *)formatWithString:(NSString *)format;
- (NSString *)formatWithStyle:(NSDateFormatterStyle)style;
- (NSString *)tweetDistanceOfTime;
- (NSString *)tweetDistanceOfTime:(NSDate *)date;

@end
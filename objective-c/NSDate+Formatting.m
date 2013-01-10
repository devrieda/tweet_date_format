////
//  NSDate+Formatting.m
//  SportSpyder
//
//  Created by Derek DeVries on 9/14/11.
//  Copyright 2011 SportSpyder. All rights reserved.
//

#import "NSDate+Formatting.h"

#define SECONDS_PER_MINUTE 60.0
#define SECONDS_PER_HOUR   3600.0
#define SECONDS_PER_DAY    86400.0
#define SECONDS_PER_MONTH  2592000.0
#define SECONDS_PER_YEAR   31536000.0

@implementation NSDate (formatting)

- (NSString *)formatWithString:(NSString *)format {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];
    NSString *string = [formatter stringFromDate:self];
    [formatter release];
    return string;
}

- (NSString *)formatWithStyle:(NSDateFormatterStyle)style {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:style];
    NSString *string = [formatter stringFromDate:self];
    [formatter release];
    return string;
}

- (NSString *)tweetDistanceOfTime {
    return [self tweetDistanceOfTime:[NSDate date]];
}

- (NSString *)tweetDistanceOfTime:(NSDate *)date {
    NSString *Seconds = @"s";
    NSString *Minutes = @"m";
    NSString *Hours   = @"h";
    NSString *Days    = @"d";
    NSString *Years   = @"y";
    
    NSTimeInterval since = [self timeIntervalSinceDate:date];
    since = fabs(since);
    
    int seconds   = (int)since;
    int minutes   = (int)round(since / SECONDS_PER_MINUTE);
    int hours     = (int)round(since / SECONDS_PER_HOUR);
    int days      = (int)round(since / SECONDS_PER_DAY);
    int years     = (int)floor(since / SECONDS_PER_YEAR);
    int offset    = (int)round(floor((float)years / 4.0) * 1440.0);
    int remainder = (minutes - offset) % 525600;
    
    int number;
    NSString *measure;
    
    switch (minutes) {
        case 0 ... 1:
            measure = Seconds;
            switch (seconds) {
                case 0 ... 4:
                    number = 5;
                    break;
                case 5 ... 9:
                    number = 10;
                    break;
                case 10 ... 19:
                    number = 20;
                    break;
                case 20 ... 39:
                    number = 30;
                    break;
                case 40 ... 59:
                    number = 1;
                    measure = Minutes;
                    break;
                default:
                    number = 1;
                    measure = Minutes;
                    break;
            }
            break;
        case 2 ... 44:
            number = minutes;
            measure = Minutes;
            break;
        case 45 ... 1439:
            number = hours;
            measure = Hours;
            break;
        case 1440 ... 525599:
            number = days;
            measure = Days;
            break;
        default:
            number = years;
            measure = Years;
            if (remainder < 131400) {
            } else if (remainder < 394200) {
            } else {
                ++number;
                measure = Years;
            }
            break;
    }

    return [NSString stringWithFormat:@"%d%@", number, measure];
}

@end

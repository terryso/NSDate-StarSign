//
//  NSDate+StarSign.h
//
//  Created by 四眼蒙面侠 on 2013-07-21.
//  Copyright (c) 2013年 toraysoft. All rights reserved.
//  
//  MyBlog: http://terryso.github.com
//

#import "NSDate+StarSign.h"

@implementation NSDate (StarSign)

- (NSString *)starSign {
    NSString *starSignString = @"";
    if ([self isBetweenDate:@"03-21" andDate:@"04-19"])
        starSignString = @"白羊座";
    else if ([self isBetweenDate:@"04-20" andDate:@"05-20"])
        starSignString = @"金牛座";
    else if ([self isBetweenDate:@"05-21" andDate:@"06-21"])
        starSignString = @"双子座";
    else if ([self isBetweenDate:@"06-22" andDate:@"07-22"])
        starSignString = @"巨蟹座";
    else if ([self isBetweenDate:@"07-23" andDate:@"08-22"])
        starSignString = @"狮子座";
    else if ([self isBetweenDate:@"08-23" andDate:@"09-22"])
        starSignString = @"处女座";
    else if ([self isBetweenDate:@"09-23" andDate:@"10-23"])
        starSignString = @"天秤座";
    else if ([self isBetweenDate:@"10-24" andDate:@"11-22"])
        starSignString = @"天蝎座";
    else if ([self isBetweenDate:@"11-23" andDate:@"12-21"])
        starSignString = @"射手座";
    else if ([self isBetweenDate:@"12-22" andDate:@"12-31"])
        starSignString = @"摩羯座";
    else if ([self isBetweenDate:@"01-01" andDate:@"01-19"])
        starSignString = @"摩羯座";
    else if ([self isBetweenDate:@"01-20" andDate:@"02-18"])
        starSignString = @"水瓶座";
    else if ([self isBetweenDate:@"02-19" andDate:@"03-20"])
        starSignString = @"双鱼座";
    return starSignString;
}

- (BOOL)isBetweenDate:(NSString *)earlierDate andDate:(NSString *)laterDate {
    NSString *format = @"MM-dd";
    NSDateFormatter *dateFormatter = [[[NSDateFormatter alloc] init] autorelease];
    [dateFormatter setDateFormat:format];
    NSString *dateString = [dateFormatter stringFromDate:self];
    return ([dateString compare:earlierDate] >= 0) && ([dateString compare:laterDate] <= 0);
}

@end

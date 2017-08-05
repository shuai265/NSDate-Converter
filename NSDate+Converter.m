//
//  NSDate+Converter.m
//  灵雨天气
//
//  Created by liushuai on 2017/8/5.
//  Copyright © 2017年 liushuai. All rights reserved.
//

#import "NSDate+Converter.h"

@implementation NSDate (Converter)


+ (NSString *)weekdayFromDateStr:(NSString *)dateStr formatter:(NSString *)formatterStr {
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = formatterStr;
    NSDate *date = [formatter dateFromString:dateStr];
    
    NSCalendar* cal = [NSCalendar currentCalendar];
    NSDateComponents* comp = [cal components:NSCalendarUnitWeekday fromDate:date];
    NSInteger weekNum = [comp weekday];
    switch (weekNum) {
        case 1:
            return @"星期日";
            break;
        case 2:
            return @"星期一";
            break;
        case 3:
            return @"星期二";
            break;
        case 4:
            return @"星期三";
            break;
        case 5:
            return @"星期四";
            break;
        case 6:
            return @"星期五";
            break;
        case 7:
            return @"星期六";
            break;
        default:
            return @"ERROR";
            break;
    }
}

@end

//
//  NSDate+Converter.h
//  灵雨天气
//
//  Created by liushuai on 2017/8/5.
//  Copyright © 2017年 liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Converter)

/**
 *
 */
+ (NSString *)weekdayFromDateStr:(NSString *)dateStr formatter:(NSString *)formatterStr;

@end

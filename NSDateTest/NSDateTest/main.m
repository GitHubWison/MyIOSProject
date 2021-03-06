//
//  main.m
//  NSDateTest
//
//  Created by Dex on 15/8/4.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //获取代表当前日期，时间的NSDate
        NSDate * date1=[NSDate date];
        NSLog(@"%@",date1);
        //获取从当前时间开始，一天后的日期
        NSDate * date2=[[NSDate alloc] initWithTimeIntervalSinceNow:3600*24];
        NSLog(@"%@",date2);
        //获取从当前时间开始，3天之前的日期
        NSDate * date3=[[NSDate alloc] initWithTimeIntervalSinceNow:-3*3600*24];
        NSLog(@"%@",date3);
        //获取从1970年1月1日开始，20年后的日期
        NSDate * date4=[NSDate dateWithTimeIntervalSince1970:3600*24*366*20];
        NSLog(@"%@",date4);
        //获取系统当前的locale;
        NSLocale *cn=[NSLocale currentLocale];
        //获取NSDate 在当前Locale下对应的字符串
        NSLog(@"获取NSDate 在当前Locale下对应的字符串%@",[date1 descriptionWithLocale:cn]);
        //获取两个日期之间较早的日期
        NSDate * earlier=[date1 earlierDate:date2];
        NSLog(@"两个日期中较早的日期是：%@",earlier);
        //获取两个日期之间较晚的日期
        NSDate * later=[date1 laterDate:date2];
        NSLog(@"两个日期中较早的日期是：%@",later);
        //比较两个日期，compare:方法返回NSComparisonResult枚举值
        //该枚举类型包含NSOrderedAscending,NSOrderedSame和NSOrderedDescending三个值
        //分别代表调用compare:的日期位于被比较日期之前，相同，之后
        switch ([date1 compare:date3]) {
            case NSOrderedAscending:
                NSLog(@"date1位于date3之前");
                break;
            case NSOrderedSame:
                NSLog(@"date1与date3相同");
                break;
            case NSOrderedDescending:
                NSLog(@"date1位于date3之后");
                break;
                
            default:
                break;
        }
        //获取两个时间之间的时间差
        NSLog(@"date1与date3之间时间差%g秒",[date1 timeIntervalSinceDate:date3]);
        //获取指定时间与现在的时间差
        NSLog(@"date2与现在的时间差%g秒",[date2 timeIntervalSinceNow]);
        
    }
    return 0;
}

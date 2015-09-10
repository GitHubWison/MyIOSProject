//
//  main.m
//  NSDateFormatterTest
//
//  Created by Dex on 15/8/4.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //需要被格式化的时间
        //获取从1970年1月1日开始，20年之后的日期
        NSDate * dt=[NSDate dateWithTimeIntervalSince1970:20*366*24*3600];
        //创建两个NSLocale，分别代表中国，美国
        NSLocale * locales[]={[[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"],[[NSLocale alloc] initWithLocaleIdentifier:@"en_US"]};
        NSDateFormatter * df[8];
        //为上面2个NSLocale创建8个DateFormat对象
        for (int i=0; i<2; i++) {
            df[i*4]=[[NSDateFormatter alloc] init];
            //设置
        }
    }
    return 0;
}

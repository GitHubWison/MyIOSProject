//
//  main.m
//  NSStringTest
//
//  Created by Dex on 15/7/24.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        unichar data[6]={97,98,99,100,101,102};
        //使用Unicode数值数组初始化字符串
        NSString * str= [[NSString alloc] initWithCharacters:data  length:6];
        NSLog(@"%@",str);
        char * cstr="Hello,iOS";
        //将c风格的字符串转换为NSString 对象
        NSString * str2=[NSString stringWithUTF8String:cstr];
        NSLog(@"%@",str2);
        //将字符串写入指定文件
        [str2 writeToFile:@"myFile.txt" atomically:YES encoding:NSUTF8StringEncoding error:nil];
        //读取文件内容，用文件内容初始化字符串
        NSString * str3=[NSString stringWithContentsOfFile:@"NSStringTest.m" encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"%@",str3);
        
    }
    return 0;
}

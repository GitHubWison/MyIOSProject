//
//  main.m
//  NSStringTest2
//
//  Created by Dex on 15/7/24.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString * str=@"Hello";
        NSString * book=@"《疯狂ios讲义》";
        str=[str stringByAppendingString:@",IOS"];
        NSLog(@"%@",str);
        //c风格字符串
        const char* cstr=[str UTF8String];
        NSLog(@"获取的c字符串%s",cstr);
        //在str后面追加带变量的字符串
       str=[str stringByAppendingFormat:@"%@是一本非常不错的图书",book];
        NSLog(@"%@",str);
        NSLog(@"str的字符个数为：%lu",[str length]);
        NSLog(@"str按UTF-8字符集解码后字节数为：%lu",[str lengthOfBytesUsingEncoding:NSUTF8StringEncoding]);
        //获取str的前10个字符组成的字符串
        NSString * s1=[str substringToIndex:10];
        NSLog(@"%@",s1);
        //获取str从第5个字符开始，与后面自负组成的字符串
        NSString * s2=[str substringFromIndex:5];
        NSLog(@"%@",s2);
        //获取 str从第5个字符开始到第15个字符组成的字符串
        NSString* s3=[str substringWithRange:NSMakeRange(5, 15)];
        NSLog(@"%@",s3);
        //获取ios在str中出现的位置
        NSRange pos=[str rangeOfString:@"iOS"];
        NSLog(@"iOS在str中出现的开始位置：%ld,长度为：%ld",pos.location,pos.length);
        //将str的所有字符转为大写
        str=[str uppercaseString];
        NSLog(@"%@",str);
    }
    return 0;
}

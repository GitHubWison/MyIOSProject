//
//  main.m
//  NSStringTest3
//
//  Created by Dex on 15/7/28.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString * str1=[NSString stringWithFormat:@"one two three four"];
        //获取字符串的前5个字符
        NSLog(@"字符串的前5个字符是：%@",[str1 substringToIndex:5]);
        //获取字符串第5个字符以后的字符
        NSLog(@"第5个字符以后的字符:%@",[str1 substringFromIndex:5]);
        //获取字符串中5之后的10个字符
        NSLog(@"第5之后的10个字符:%@",[str1 substringWithRange:NSMakeRange(5, 10)]);
        //拼接字符串
        NSString * str2=[NSString stringWithFormat:@"*******"];
        str1=[str1 stringByAppendingString:@" five"];
        NSLog(@"拼接后的字符串:%@",str1);
        //拼接带参数的字符串
        NSString * newstr1;
        newstr1=[str1 stringByAppendingFormat:@"%@",str2];
        
//        NSString * newstr3;
//        newstr3=[str1 stringByAppendingString:str2];
        NSLog(@"拼接后的字符串(newstr1):%@",newstr1);
//        
//        NSLog(@"拼接后的字符串(newstr3):%@",newstr3);
        //将str转成大写
        NSLog(@"转成大写后的字符串：%@",[newstr1 uppercaseString]);
        //str字符串的长度是
//        NSLog(@"str字符串的长度是：%ld",[[NSString stringWithFormat:@"qwer" ] length]);
        NSLog(@"str字符串的长度是：%ld",[newstr1 length]);
        //找到"four"在字符串中的位置
        NSRange pos=[newstr1 rangeOfString:@"four"];
        NSLog(@"four在str中出现的开始的位置：%ld",pos.location);
    }
    return 0;
}

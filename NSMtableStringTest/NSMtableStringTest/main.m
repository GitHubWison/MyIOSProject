//
//  main.m
//  NSMtableStringTest
//
//  Created by Dex on 15/7/31.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString * str=[NSMutableString stringWithString:@"hello"];
        [str appendString:@"iOS"];
        NSLog(@"%@",str);
        [str appendFormat:@"%@是一本书",@"1234" ];
        NSLog(@"%@",str);
        //在指定位置插入字符串
        [str insertString:@"*****" atIndex:8];
         NSLog(@"%@",str);
        //删除从8到12的字符
        [str deleteCharactersInRange:NSMakeRange(8, 4)];
         NSLog(@"%@",str);
        
    }
    return 0;
}

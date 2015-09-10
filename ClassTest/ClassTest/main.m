//
//  main.m
//  ClassTest
//
//  Created by Dex on 15/7/21.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //通过字符串来获取Class
        Class clazz=NSClassFromString(@"NSDate");
        NSLog(@"%@",clazz);
        //直接食用Class来创建对象
        id date=[[clazz alloc]init];
        NSLog(@"%@",date);
        //通过对象来获取Class
        NSLog(@"%@",[date class]);
        //通过类来获取class
        NSLog(@"%d",clazz==NSDate.class);
    }
    return 0;
}

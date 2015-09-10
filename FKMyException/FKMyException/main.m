//
//  main.m
//  FKMyException
//
//  Created by Dex on 15/7/21.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKDog.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKDog * dog=[[FKDog alloc]init];
        dog.age=80;
        NSLog(@"狗的年龄为：%d",dog.age);
//        dog.age =30;
       
    }
    return 0;
}

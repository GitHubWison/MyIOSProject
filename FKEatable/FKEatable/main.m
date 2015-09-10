//
//  main.m
//  FKEatable
//
//  Created by Dex on 15/7/21.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKApple.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        @try {
            FKApple * app=[[FKApple alloc]init];
            [app teste];
        }
        @catch (NSException *exception) {
            NSLog(@"捕获异常");
            NSLog(@"捕捉异常：%@,%@",exception.name,exception.reason);
        }
        @finally {
            NSLog(@"资源回收");
        }
        NSLog(@"程序执行完成");
        
    }
    return 0;
}

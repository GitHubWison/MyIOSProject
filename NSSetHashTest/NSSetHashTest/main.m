//
//  main.m
//  NSSetHashTest
//
//  Created by Dex on 15/8/11.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKUser.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
       NSSet * set= [NSSet setWithObjects:
         [[FKUser alloc] initFKUsername:@"ww1" andPass:@"111"] ,
         [[FKUser alloc] initFKUsername:@"ww1" andPass:@"111"] ,
         [[FKUser alloc] initFKUsername:@"ww2" andPass:@"222"] ,
         nil];
        NSLog(@"集合中共有%ld个元素,分别是：%@",[set count],[FKUser getResultString:set]);
    }
    return 0;
}

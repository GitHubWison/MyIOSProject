//
//  main.m
//  FKUser4
//
//  Created by Dex on 15/8/5.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKUser.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray * array=[NSArray arrayWithObjects:
                         [[FKUser alloc] initWithName:@"sun" pass:@"123"],
                         [[FKUser alloc] initWithName:@"bai" pass:@"345"],
                         [[FKUser alloc] initWithName:@"zhu" pass:@"654"],
                         [[FKUser alloc] initWithName:@"tang" pass:@"178"],
                         [[FKUser alloc] initWithName:@"niu" pass:@"155"],
                         nil];
        //查找指定新FKUser对象在集合中的索引
        FKUser* newUser=[[FKUser alloc]initWithName:@"zhu" pass:@"654"];
        NSUInteger pos=[array indexOfObject:newUser];
        NSLog(@"newUser的位置为：%ld",pos);
//        NSLog([NSString stringWithFormat:[newUser description]]);
    }
    return 0;
}

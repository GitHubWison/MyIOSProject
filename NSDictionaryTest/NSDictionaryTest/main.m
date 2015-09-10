//
//  main.m
//  NSDictionaryTest
//
//  Created by Dex on 15/8/12.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKUser.h"
#import "NSDictionary+print.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //直接使用多个value,key的形式创建NSDictionary对象
        NSDictionary * dict=[NSDictionary dictionaryWithObjectsAndKeys:
                             [[FKUser alloc] initWithName:@"sun" pass:@"123"],@"one",
                             [[FKUser alloc] initWithName:@"bai" pass:@"345"],@"two",
                             [[FKUser alloc] initWithName:@"sun" pass:@"123"],@"three",
                             [[FKUser alloc] initWithName:@"tang" pass:@"178"],@"four",
                             [[FKUser alloc] initWithName:@"niu" pass:@"155"],@"five",
                             nil];
//        [dict print];
//        NSLog(@"dict包含%ld个key-value对" ,[dict count]);
//        NSLog(@"dict所有的key为：%@",[dict allKeys]);
//        NSLog(@"name=sun对应的所有的key为：%@",
//              [dict allKeysForObject:[[FKUser alloc] initWithName:@"sun" pass:@"123"]]);
        //获取遍历dict所有value的枚举器
        NSEnumerator *en =[dict objectEnumerator];
        NSObject * value;
        //使用美剧器来遍历dict中所有的value
        while (value=[en nextObject]) {
            NSLog(@"%@",value);
        }
    }
    return 0;
}

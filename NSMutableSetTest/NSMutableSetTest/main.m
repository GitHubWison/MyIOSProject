//
//  main.m
//  NSMutableSetTest
//
//  Created by Dex on 15/8/11.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <Foundation/Foundation.h>
NSMutableString * NSCollectToString(NSMutableSet* set){
    NSMutableString *nsmstring =[[NSMutableString alloc] init];
    for(NSString* temp in set){
        [nsmstring appendFormat:@"%@ ",temp ];
    }
    return nsmstring;
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建一个初始容量为10的set集合
        NSMutableSet * set=[NSMutableSet setWithCapacity:10];
        [set addObject:@"疯狂iOS讲义"];
        NSLog(@"添加1个元素后：%@",NSCollectToString(set));
        [set addObjectsFromArray:[NSArray arrayWithObjects:
                                  @"疯狂Android讲义",
                                  @"疯狂Ajax讲义",
                                  @"疯狂XML讲义",
                                  nil]];
        NSLog(@"使用nsarray添加了3个元素后：%@",NSCollectToString(set));
        //再次创建一个Set集合
        NSSet * set2=[NSSet setWithObjects:@"孙悟空",@"疯狂Android讲义", nil];
        //计算两个集合的并集，直接改变set集合的元素
        [set unionSet:set2];
        //计算两个集合的差集，直接改变set集合的元素
        [set minusSet:set2];
        //计算两个集合的交集，直接改变set集合的元素
        [set intersectSet:set2];
        //用set2的集合元素替换set的集合元素，直接改变set集合的元素
        [set setSet:set2];
        NSLog(@"%@",NSCollectToString(set));
        
    }
    return 0;
}

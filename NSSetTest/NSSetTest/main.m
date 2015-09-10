//
//  main.m
//  NSSetTest
//
//  Created by Dex on 15/8/11.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <Foundation/Foundation.h>
//定义一个函数，该函数可把NSArray或NSSet集合转换为字符串
NSMutableString * NSCollectionToString(NSSet * collection)
{
    NSMutableString * result = [NSMutableString new];
    for(NSMutableString * singleResult in collection){
        [result appendFormat:@"%@ ",singleResult];
    }
    return result;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      //用4个元素初始化NSSet集合
        //估计传入两个相等的元素，NSSet集合只会保留一个元素
        NSSet * set1=[NSSet setWithObjects:
                      @"疯狂iOS讲义",
                      @"疯狂Android讲义",
                      @"疯狂Ajax讲义",
                      @"疯狂iOS讲义",
                      nil];
        //程序输出set1集合中元素个数为3
//        NSLog(@"set1集合中元素个数为%ld",set1.count);
//        NSLog(@"s1集合:%@",NSCollectionToString(set1));
        NSSet * set2=[NSSet setWithObjects:@"孙悟空",@"疯狂Android讲义",@"猪八戒", nil];
        //向set1集合中添加单个元素，将添加元素后生成的新集合赋给set1
//        set1=[set1 setByAddingObject:@"Structs2.1权威指南"];
//        NSLog(@"添加一个元素后：%@",NSCollectionToString(set1));
        //使用NSSet集合向set1集合中添加多个元素，相当于结束两个集合的并集
//        NSSet * s=[set1 setByAddingObjectsFromSet:set2];
//       set1= [set1 setByAddingObject:@"孙悟空"];
        NSLog(@"set1是：%@",NSCollectionToString(set1));
        NSLog(@"set2是：%@",NSCollectionToString(set2));
//        NSLog(@"set1和set2的并集是：%@",NSCollectionToString(s));
//        BOOL b=[set1 intersectsSet:set2];//计算两个nsset是否有交集
//        NSLog(@"两个nsset是否有交集:%d",b);
//        BOOL bo = [set2 isSubsetOfSet:set1];//判断set2是否是set1 的子集
//        NSLog(@"判断set2是否是set1 的子集:%d",bo);
        //判断NSSet集合是否包含制定元素
        BOOL  bb=[set1 containsObject:@"疯狂Ajax讲义"];
        NSLog(@"set1是否包含\"疯狂Ajax讲义\":%d",bb);
        //下面两行代码将去处相同的元素，但取出哪个元素是不确定的
        NSLog(@"set1取出一个元素：%@",[set1 anyObject]);
        NSLog(@"set1取出一个元素：%@",[set1 anyObject]);
        //使用代码块对集合元素进行过滤
        NSSet * filteredSet=[set1 objectsPassingTest:^(id obj,BOOL * stop)
        {
            return (BOOL)([obj length]>=8);
        }];
        NSLog(@"set1中元素的长度大于8的集合元素有：%@",NSCollectionToString(filteredSet));
    }
    return 0;
}

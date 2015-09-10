//
//  main.m
//  NSCountSetTest
//
//  Created by Dex on 15/8/12.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <Foundation/Foundation.h>
//定义一个函数，该函数可把NSArray或NSSet集合转换为字符串
NSString * NSCollectionToString(NSCountedSet* collection)
{
    //
    NSMutableString * returnstring=[NSMutableString  new];
    for(NSString* singlestring in collection){
        //returnstring=[returnstring stringByAppendingFormat:@"%@ ",singlestring];
        [returnstring appendFormat:@"%@ ",singlestring];
    }
    
    return returnstring;
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSCountedSet * set = [NSCountedSet setWithObjects:@"疯狂ios讲义",
                              @"疯狂Android讲义",@"疯狂Ajax讲义",nil];
        [set addObject:@"疯狂ios讲义"];
        [set addObject:@"疯狂ios讲义"];
        //输出集合元素
//        NSLog(@"%@",NSCollectionToString(set));
//        //获取制定元素的添加顺序
//        NSLog(@"\"疯狂ios讲义\"的添加次数为：%ld",[set countForObject:@"疯狂ios讲义"]);
//        删除元素
        [set removeObject:@"疯狂ios讲义"];
        [set removeObject:@"疯狂ios讲义"];
        [set removeObject:@"疯狂ios讲义"];
        NSLog(@"删除后的结果是：%@",NSCollectionToString(set));
        
    }
    return 0;
}

//
//  main.m
//  NSOrderedSetTest
//
//  Created by Dex on 15/8/12.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <Foundation/Foundation.h>
NSString * NSCollectionToString(NSOrderedSet * orderset)
{
    NSString * resultstring = [NSMutableString new];
    for(NSString * singlestring in orderset){
//        [resultstring appendFormat:@"%@ ",singlestring ];
     resultstring =  [resultstring stringByAppendingFormat:@"%@ ",singlestring];
        
    }
    return resultstring;
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建NSOrderedSet集合，故意使用重复的元素
        //可看到程序中只会保留一个元素
        NSOrderedSet* orderset=[NSOrderedSet orderedSetWithObjects:
                                [NSNumber numberWithInt:40],
                                [NSNumber numberWithInt:12],
                                [NSNumber numberWithInt:-9],
                                [NSNumber numberWithInt:28],
                                [NSNumber numberWithInt:12],
                                [NSNumber numberWithInt:17],
                                nil];
//        NSLog(@"%@",NSCollectionToString(orderset));
//        //根据索引来操作集合元素
//        NSLog(@"set集合的第一个元素:%@",[orderset firstObject]);//获取第一个元素
//        NSLog(@"set集合的最后一个元素：%@",[orderset lastObject]);
//        //获取制定索引处的元素
//        NSLog(@"set集合中索引为1的元素：%@",[orderset objectAtIndex:1]);
//        NSLog(@"set集合中索引为4的元素：%@",[orderset objectAtIndex:4]);
//        NSLog(@"28在set集合中的所以是：%ld",[orderset indexOfObject:[NSNumber numberWithInt:28]]);
//         NSLog(@"12在set集合中的所以是：%ld",[orderset indexOfObject:[NSNumber numberWithInt:12]]);
        
        //对集合进行过滤，获取元素值大于20的集合元素的索引
        NSIndexSet * indexSet=[orderset indexesOfObjectsPassingTest:
                               ^(id obj,NSUInteger idx,BOOL * stop)
                               {
                                   return (BOOL)([obj intValue]>20);
                               }];
        NSString * resultstring=[NSString new];
        for(NSNumber * single in indexSet){
            resultstring=[resultstring stringByAppendingString:(NSString *)single];
        }
//        for (int i=0; i<[indexSet count]; i++) {
//            resultstring=[resultstring stringByAppendingString:[indexSet ]];
//        }
//        NSLog(@"集合中大于20的元素是：%@",NSCollectionToString(indexSet));
        
        
    }
    return 0;
}

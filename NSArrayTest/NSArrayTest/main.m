//
//  main.m
//  NSArrayTest
//
//  Created by Dex on 15/8/5.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        NSArray* array=[NSArray arrayWithObjects:@"疯狂iOS讲义",@"疯狂android讲义",@"疯狂Ajax讲义",@"疯狂xml讲义",
                         @"structs2.x权威指南",nil];
        NSLog(@"第一个元素为：%@",[array objectAtIndex:0]);
        NSLog(@"索引为1的元素为：%@",[array objectAtIndex:1]);
        NSLog(@"最后元素为：%@",[array lastObject]);
        //获取索引从2-5的元素组成的新集合
        NSArray * array1=[array objectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(2, 3)]];
        NSLog(@"%@",array1);
        //获取元素在集合中的位置
        NSLog(@"疯狂android讲义的位置为：%ld",[array indexOfObject:@"疯狂android讲义"]);
        //获取元素在集合指定范围中的位置
        NSLog(@"在2－5范围疯狂android讲义的位置为：%ld",[array
                                            indexOfObject:@"疯狂android讲义"inRange:NSMakeRange(2, 3)]);
        //向数组的最后追加一个元素
        //原NSArray本身并没有改变，只是讲新返回的NSArray赋值给array
        array=[array arrayByAddingObject:@"孙悟空"];
        
        //向array数组的最后追加另一个数组的所有元素
        //原NSArray本身并没有改变，只是将新返回的NSArray赋值给array
        array = [ array arrayByAddingObjectsFromArray: [NSArray arrayWithObjects:@"宝玉",@"黛玉",nil]];
        for (int i=0; i<array.count; i++) {
            NSLog(@"%@",[array objectAtIndex:i]);
            //上面的代码也可简写
            //NSLog(@"%@",array[i]);
        }
        //获取array数组中索引为5-8处的所有元素
        NSArray * arr2=[array subarrayWithRange:NSMakeRange(5, 3)];
        //将NSArray集合的元素写入文件
        [arr2 writeToFile:@"myFile.txt" atomically:YES];
        for (int i=0; i<array.count; i++) {
             NSLog(@"旧的array是：%@",[array objectAtIndex:i]);
        }
        for (int i=0; i<arr2.count; i++) {
            NSLog(@"新的arr2是：%@",[arr2 objectAtIndex: i]);
        }
       
        
        
    }
    return 0;
}

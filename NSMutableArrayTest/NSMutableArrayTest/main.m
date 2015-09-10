//
//  main.m
//  NSMutableArrayTest
//
//  Created by Dex on 15/8/11.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <Foundation/Foundation.h>
//定义一个函数，该函数用户把 NSArray集合转换为字符串
//NSString * NSCollectionToString(NSArray* array)
//{
//    NSMutableString * result = [NSMutableString stringWithString:@"["];
//    for (id obj in array) {
//        [result appendString:[obj description]];
//        [result appendString:@","];
//        
//    }
//    NSUInteger len= [result length];//获取字符串的长度
//    //去掉字符串最后的两个字符
//    [result deleteCharactersInRange:NSMakeRange(len-2, 2)];
//    return result;
//}

//定义一个函数打印数组中所有的元素
NSMutableString * arrayToString(NSArray * array)
{
    NSMutableString * string=[NSMutableString new];
    [string appendString:@"["];
    for (NSString * returnstring in array) {
        [string appendFormat:@"%@，",returnstring];
    }
    [string deleteCharactersInRange:NSMakeRange(string.length-1,1)];
    [string appendString:@"]"];
    return string;
    
}
int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        NSMutableArray * array = [NSMutableArray arrayWithObjects:
                                  [NSNumber numberWithInt:111],
                                  [NSNumber numberWithInt:222],
                                  [NSNumber numberWithInt:333],
                                  nil];
        [array addObject:@"疯狂iOS讲义"];
//        NSLog(@"最后追加一个元素后：%@",NSCollectionToString(array));
//        NSLog(@"%@",[array objectAtIndex:3]);
//        NSLog(@"%@",arrayToString(array));
//        使用NSArray向集合尾部添加多个元素
        [array addObjectsFromArray:[NSArray arrayWithObjects:@"张飞",@"关羽",nil]];
//        NSLog(@"向后面增加两个元素后：%@",arrayToString(array));
        //向集合中的指定位置插入一个元素
        [array insertObject:@"王二" atIndex:2];
//        NSLog(@"插入了一个元素后：%@",arrayToString(array));
        //在制定的位置插入多个元素
        [array insertObjects:[NSArray arrayWithObjects:@"赵3",@"赵4",@"赵5",nil]
                   atIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(3, 3)] ];
//        NSLog(@"插入了多个元素后：%@",arrayToString(array));
//删除集合中最后一个元素
//        [array removeLastObject];
//        NSLog(@"%@",arrayToString(array));
        //删除集合中指定索引处的元素
//        [array removeObjectAtIndex:0];
//        NSLog(@"%@",arrayToString(array));
        //删除集合中从2到5的元素
        [array removeObjectsInRange:NSMakeRange(3, 3)];
//        NSLog(@"%@",arrayToString(array));
        //替换索引为2处的元素
        [array replaceObjectAtIndex:2 withObject:@"替代的东西"];
        NSLog(@"%@",arrayToString(array));
    }
    return 0;
}

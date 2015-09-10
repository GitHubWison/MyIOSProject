//
//  main.m
//  CommaOperatorTest
//
//  Created by 徐徐麒威 on 15/6/6.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        int a=2;//定义a的值为2
//        //将a赋值为逗号表达式的值结果a的值为真
//        a=(a*=3,5<8);
//        NSLog(@"%d",a);
//        //对a连续赋值，最后a的值为9，整个表达式的值为9
//        int x=(a=3,a++,a++,++a);
//        NSLog(@"a:%d,x:%d",a,x);
            NSString *str=5>3 ? @"5大于3":@"5不大于3";
        NSLog(@"%@",str);        
        
        
        
    }
    return 0;
}

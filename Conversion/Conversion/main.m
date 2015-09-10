//
//  main.m
//  Conversion
//
//  Created by 徐徐麒威 on 15/6/6.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a=100;
        int b=3;
        float f1=a/b;//直接计算
        float f2=(float)a/b;//强行转换
        NSLog(@"输出33：%g",f1);//输出33
        NSLog(@"输出33.3333：%g",f2);//输出33.3333
        int it=(int)2.3+(int)122.2;
        NSLog(@"%d",it);
    }
    return 0;
}

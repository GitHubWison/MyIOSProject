//
//  FKDog.m
//  FKMyException
//
//  Created by Dex on 15/7/21.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import "FKDog.h"
#import "FKMyException.h"
@implementation FKDog
@synthesize age=_age;
-(void)setAge:(int)age
{
    if (self.age!=age) {
        
        NSLog(@"self.age= %d,age= %d",self.age,age);
        
//        //检查年龄是否在0~50之间
//        if(age>50||age<0)
//        {
//            //手动抛出异常
//            @throw [[FKMyException alloc]
//            initWithName:@"IllegalArgumentException"
//        reason:@"狗的年龄必须在0～50之间"
//                    userInfo:nil];
//        }
        _age=age;
    }
}
@end

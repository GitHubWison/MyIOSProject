//
//  FKItem.m
//  FKItem3
//
//  Created by Dex on 15/7/21.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import "FKItem.h"

@implementation FKItem
//重写该方法作为测试
-(id)init
{
    if (self==[super init]) {
        NSLog(@"init方法中，引用计数为：%ld",self.retainCount);
    }
    return self;
}
//重写该方法作为测试
-(void)dealloc
{
    NSLog(@"系统开始销毁我了，再见！");
    [super dealloc];
}
@end

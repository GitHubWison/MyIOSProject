//
//  FKUser.m
//  FKUser3
//
//  Created by Dex on 15/7/22.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import "FKUser.h"

@implementation FKUser

-(void)setItem:(FKItem *)item
{
    if(_item!=item){
        //将_item引用的实例变量的引用计数减1
        [_item release];
        
        //让item的引用计数加1
        [item retain];
        _item=item;
    }
}
-(FKItem *)item
{
    return _item;
}
-(void)dealloc
{
    //让_item的引用计数减1
    [_item release];
    NSLog(@"系统开始销毁FKUser对象");
    [super dealloc];
}
@end

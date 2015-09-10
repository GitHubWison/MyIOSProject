//
//  FKUser.h
//  FKUser3
//
//  Created by Dex on 15/7/22.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKItem.h"
@interface FKUser : NSObject
//定义FKUser对象持有FKItem对象
{
    FKItem * _item;
}
-(void)setItem:(FKItem *)item;
-(FKItem *)item;
@end

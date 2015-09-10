//
//  FKUser.h
//  FKUser4
//
//  Created by Dex on 15/8/5.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FKUser : NSObject
@property (nonatomic,copy)NSString * name;
@property (nonatomic,copy)NSString * pass;
-(id)initWithName:(NSString * )aName
             pass:(NSString * )aPass;
-(void)say:(NSString * )content;
@end

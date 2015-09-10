//
//  FKUser.h
//  NSDictionaryTest
//
//  Created by Dex on 15/8/12.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FKUser : NSObject
@property NSString * name;
@property NSString * pass;
-(FKUser * )initWithName:(NSString *)name pass:(NSString *)pass;
@end

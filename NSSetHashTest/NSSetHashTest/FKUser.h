//
//  FKUser.h
//  NSSetHashTest
//
//  Created by Dex on 15/8/11.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FKUser : NSObject
@property NSString * name;
@property NSString * pass;
-(FKUser *) initFKUsername:(NSString * )fkname andPass:(NSString * )fkpass;
+(NSString *)getResultString:(NSSet*)sets;
@end

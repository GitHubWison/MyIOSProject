//
//  FKUser.m
//  NSSetHashTest
//
//  Created by Dex on 15/8/11.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import "FKUser.h"

@implementation FKUser
@synthesize name;
@synthesize pass;
-(FKUser *)initFKUsername:(NSString *)fkname andPass:(NSString *)fkpass{
    name=fkname;
    pass=fkpass;
    return self;
}
-(NSString *)description{
    return  [NSString stringWithFormat:@"姓名：%@,密码：%@",self.name,self.pass];
}
-(BOOL)isEqual:(FKUser*)object
{
    if (self.name==object.name&&self.pass==object.pass) {
        return YES;
    }
    return NO;
}
+(NSString *)getResultString:(NSSet *)sets{
    NSString* s=[[NSString alloc] init];
    for(NSString* singlestring in sets){
        NSLog(@"+打印+＝singlestring＝%@",singlestring);
       s= [s stringByAppendingFormat:@"%@ ",singlestring];
//        s=[s stringByAppendingString:@"** "];
        NSLog(@"+打印+＝finalstring＝%@",s);
    }
    return s;
}
//重写HASH方法，重写该方法的比较标准的是，
//如果两个FKUser的name,pass相等，两个FKUser的Hash方法返回值相等
//-(NSUInteger)hash
//{
//    NSLog(@"====hash=====");
//    NSUInteger nameHash=name==nil?0:[name hash];
//    NSUInteger passHash=pass==nil?0:[pass hash];
//    return nameHash * 31+passHash;
//}
@end

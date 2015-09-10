//
//  FKUser.m
//  FKUser4
//
//  Created by Dex on 15/8/5.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import "FKUser.h"

@implementation FKUser
@synthesize name;
@synthesize pass;
-(id)initWithName:(NSString *)aName pass:(NSString *)aPass
{
    name=aName;
    pass=aPass;
    return self;
}
-(void)say:(NSString *)content
{
    NSLog(@"%@说：%@",self.name,content);
}
//会重写isEqual方法，重写该方法的比较标准是：如果两个FKUser的name,pass相等，即可认为它们相等
-(BOOL)isEqual:(id)object
{
    if (self==object) {
        return YES;
    }
    if ([object class]==[FKUser class]) {
        FKUser * target=(FKUser*)object;
        return [self.name isEqualToString:target.name]&&[self.pass isEqualToString:target.pass];
    }
    return NO;
}
//重写description方法，可以直接看到FKUser对象的状态
-(NSString *)description
{
    return [NSString stringWithFormat:@"<FKUser[name=%@,pass=%@]>",self.name,self.pass ];
}
@end

//
//  FKUser.m
//  NSDictionaryTest
//
//  Created by Dex on 15/8/12.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import "FKUser.h"

@implementation FKUser
@synthesize name;
@synthesize pass;
-(FKUser *)initWithName:(NSString *)name1 pass:(NSString *)pass1
{
    self.name=name1;
    self.pass=pass1;
    return self;
}
-(NSString *)description
{
    NSMutableString* desstring=[NSMutableString new];
    [desstring appendFormat:@"<FKUser[name=%@,pass=%@]>",self.name,self.pass];
    return desstring;
}
@end

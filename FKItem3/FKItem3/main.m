//
//  main.m
//  FKItem3
//
//  Created by Dex on 15/7/21.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKItem.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKItem * item=[FKItem new];
        NSLog(@"%ld",item.retainCount);
        [item retain];
        NSLog(@"%ld",item.retainCount);
        [item retain];
        NSLog(@"%ld",item.retainCount);
        [item release];
        NSLog(@"%ld",item.retainCount);
        [item release];
        NSLog(@"%ld",item.retainCount);
        [item release];
        NSLog(@"%ld",item.retainCount);
        
    }
    return 0;
}

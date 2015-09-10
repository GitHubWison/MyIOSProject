//
//  main.m
//  FKUser3
//
//  Created by Dex on 15/7/22.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKUser.h"


FKItem * productItem(){
    FKItem * item = [FKItem new];
    NSLog(@"函数返回之前的引用计数: %ld",item.retainCount);
    //返回的对象的引用计数为1
    return [item autorelease];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        //调用new方法创建对象，该对象的引用计数为0
//        FKItem * item=[FKItem new];
//        NSLog(@"创建出来的引用计数为：%ld",item.retainCount);
//        FKUser* user=[[FKUser alloc] init];
//        [user setItem:item];
//        NSLog(@"被FKUser对象持有后的计数引用为：%ld",item.retainCount);
//        
//        //重新创建一个新的对象
//        FKItem * item2=[FKItem new];
//        //将item2作为参数传给setItem：方法
//        [user setItem:item2];
//        
//        
//        //main方法将item的引用计数减1，item的引用计数为1
//        [item release];
//        NSLog(@"调用release后的引用计数为：%ld",item.retainCount);
//        //user的引用计数减1，user的引用计数为0；
//        //系统调用user的delloc方法，调用dealloc方法时会将让FKItem的引用计数减1
//        //这样item的引用计数变为0，系统会执行item 的dealloc方法进行销毁
//        [user release];
      

        NSAutoreleasePool * pool =[[NSAutoreleasePool alloc]init];
        //it的引用计数为1
        FKItem * it = productItem();
        //接下来可以调用it的方法
        NSLog(@"%ld",it.retainCount);
        //创建一个FKUser对象，并将它添加到自动释放池
        FKUser * user=[[[FKUser alloc]init]autorelease];
        //接下来可以调用user的方法
        NSLog(@"%ld",user.retainCount);
        //系统将因为池的引用计数变为0而回收自动释放池
        //回收自动释放池时会调用池中所有对象的release方法
        [pool release];
//        //程序执行完后，将it（引用productItem()函数返回值）的引用计数减1
//        //程序使用productItem() 函数返回值完成后，延迟销毁it所指向的对象
//        [it release];
        
    }
    return 0;
}

//
//  main.m
//  DelegateTest
//
//  Created by Dex on 15/7/20.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "FKAppDelegate.h"
int main(int argc, const char * argv[]) {
    //创建一个FKAppDelegate对象，该对象实现了NSApplication协议
    FKAppDelegate * delegate=[[FKAppDelegate alloc]init];
    //获取NSApplication的单例对象
    [NSApplication sharedApplication];
    //调用静态方法为Cocoa应用设置代理，将应用发生时间委托给delegate处理
    [NSApp setDelegate:delegate];
    //开始程序
    return NSApplicationMain(argc, (const char **)argv);
}

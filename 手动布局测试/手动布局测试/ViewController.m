//
//  ViewController.m
//  手动布局测试
//
//  Created by Dex on 15/9/7.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
#define INTERVAL 10
@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
//    中间部分
    UIView *numberView = [[UIView alloc]initWithFrame:CGRectMake(20, 110, 280, 280)];
    [numberView setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:numberView];
//    上方
    UIView *titleView = [[UIView alloc]initWithFrame:CGRectMake(20, 20, 280, 80)];
    [titleView setBackgroundColor:[UIColor greenColor]];
    [self.view addSubview:titleView];
//    下方
    UIView *sureView = [[UIView alloc]initWithFrame:CGRectMake(20, 400, 280, 70)];
    [sureView setBackgroundColor:[UIColor greenColor]];
    [self.view addSubview:sureView];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

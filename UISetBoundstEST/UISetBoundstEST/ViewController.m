//
//  ViewController.m
//  UISetBoundstEST
//
//  Created by Dex on 15/9/8.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 20, 300, 200)];
    [view setBounds:CGRectMake(-40, -10, 200, 200)];
    [view setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:view];
//    [view setBounds:CGRectMake(-100, -100, 100, 200)];
//    [view setBackgroundColor:[UIColor redColor]];
//    [self.view addSubview:view];
    UILabel *lable =[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    [lable setBackgroundColor:[UIColor greenColor]];
   
    [view addSubview:lable];
    
    
    
}


@end

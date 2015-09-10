//
//  SecondViewController.m
//  消息传递测试
//
//  Created by Dex on 15/9/7.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)backButton:(id)sender {
    [_controller sendSuccess:@"HelloWorld!"];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

@end

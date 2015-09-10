//
//  ViewController.m
//  消息传递测试
//
//  Created by Dex on 15/9/7.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    SecondViewController *viewcon = [segue destinationViewController];
    [viewcon setController:self];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}
-(void)sendSuccess:(NSString *)returnMessage
{
    _helloworld.text = returnMessage;
}

@end

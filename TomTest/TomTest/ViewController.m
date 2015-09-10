//
//  ViewController.m
//  TomTest
//
//  Created by Dex on 15/9/5.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import "ViewController.h"
#import "TomCatBehavier.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//实现动作
-(void)executeActivieWhichBehavieris:(NSString *)behavier andPicNoIs:(NSInteger)picno andDurationTimeIs:(float)time
{
    TomCatBehavier *tom = [[TomCatBehavier alloc]initBehavier:behavier picNois:picno];
    [tom excuteTomcatBehavier:_tomcatActive durationTimeIs:time];
}

//踢左脚
- (IBAction)kickLeftFoot:(id)sender {
    [self executeActivieWhichBehavieris:@"cat_foot_left" andPicNoIs:30 andDurationTimeIs:2.0];
}
//喝牛奶
- (IBAction)touchMonth:(id)sender {
    [self executeActivieWhichBehavieris:@"cat_drink" andPicNoIs:81 andDurationTimeIs:7.0];
}
//踢右脚
- (IBAction)kickRightFoot:(id)sender {
    [self executeActivieWhichBehavieris:@"cat_foot_right" andPicNoIs:30 andDurationTimeIs:2.0];
}


@end

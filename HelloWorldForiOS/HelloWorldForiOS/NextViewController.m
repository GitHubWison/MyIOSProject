//
//  NextViewController.m
//  HelloWorldForiOS
//
//  Created by Dex on 15/8/13.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UINavigationBar * navBar=[[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 320, 64)];
    UINavigationItem * navItem=[[UINavigationItem alloc] initWithTitle:nil];
    UIBarButtonItem * leftButton=[[UIBarButtonItem alloc]initWithTitle:@"back" style:UIBarButtonItemStyleBordered target:self action:@selector(leftClick)];
    UIBarButtonItem * rightButton=[[UIBarButtonItem alloc] initWithTitle:@"right" style:UIBarButtonItemStyleBordered target:self action:@selector(rightClick)];
    [navItem setLeftBarButtonItem:leftButton];
    [navItem setRightBarButtonItem:rightButton];
    [navItem setTitle:@"零零发"];
    [navBar pushNavigationItem:navItem animated:NO];
    [self.view addSubview:navBar];
}
-(void)alertShow:(NSString *)msg
{
    UIAlertView * alert=[[UIAlertView alloc] initWithTitle:@"提示" message:msg delegate:self cancelButtonTitle:@"cancle" otherButtonTitles:nil, nil];
    [alert show];
}
-(void)leftClick
{
//    [self alertShow:@"点击了左边"];
    //进行返回的操作
    [self dismissModalViewControllerAnimated:YES];
    
    
}
-(void)rightClick
{
     [self alertShow:@"点击了右边"];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)alertTest:(id)sender {

   
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

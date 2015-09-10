//
//  NextViewController.h
//  HelloWorldForiOS
//
//  Created by Dex on 15/8/13.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NextViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIView *nextClick;
@property (weak, nonatomic) IBOutlet UINavigationBar *navgationbartest;
-(void)leftClick;
-(void)rightClick;
-(void)alertShow:(NSString *)msg;
@end

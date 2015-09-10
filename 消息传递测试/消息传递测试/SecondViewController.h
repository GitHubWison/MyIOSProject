//
//  SecondViewController.h
//  消息传递测试
//
//  Created by Dex on 15/9/7.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SecondViewControllerDelegate <NSObject>

- (void)sendSuccess:(NSString *)returnMessage;

@end

@interface SecondViewController : UIViewController
@property (strong, nonatomic)id<SecondViewControllerDelegate> controller;
- (IBAction)backButton:(id)sender;

@end

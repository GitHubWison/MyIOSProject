//
//  ViewController.h
//  HelloWorldForiOS
//
//  Created by Dex on 15/8/12.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *helloclick;
-(void)clickLeftButton;
-(void)clickRightButton;
-(void)showDialog:(NSString *)str;
@end


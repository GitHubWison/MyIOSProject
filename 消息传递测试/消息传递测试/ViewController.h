//
//  ViewController.h
//  消息传递测试
//
//  Created by Dex on 15/9/7.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"
@interface ViewController : UIViewController<SecondViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *helloworld;
@end


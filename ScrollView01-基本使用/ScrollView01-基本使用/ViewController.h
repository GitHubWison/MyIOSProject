//
//  ViewController.h
//  ScrollView01-基本使用
//
//  Created by Dex on 15/9/8.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
- (IBAction)moveImage:(UIButton *)sender;

@end


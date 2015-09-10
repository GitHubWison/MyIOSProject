//
//  ViewController.h
//  UI基础07－照片查看器
//
//  Created by Dex on 15/9/4.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
//图像
@property (weak, nonatomic) IBOutlet UIImageView *imageview;
//图像标题
@property (weak, nonatomic) IBOutlet UILabel *imageTitle;

//图像的序号
@property (weak, nonatomic) IBOutlet UILabel *imageNumberLabel;
@property (weak, nonatomic) IBOutlet UIStepper *imageStepter;

@property (weak, nonatomic) IBOutlet UISlider *imageSlider;


//夜间模式
- (IBAction)nightModel:(id)sender;

- (IBAction)steperChanger:(id)sender;
//滑动
- (IBAction)sliderChanger:(id)sender;
@end


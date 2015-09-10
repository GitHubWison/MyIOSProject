//
//  ViewController.h
//  UI基础12-汤姆猫
//
//  Created by Dex on 15/9/6.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController
//汤姆猫图像视图
@property (weak, nonatomic) IBOutlet UIImageView *tomCatImageView;
//汤姆猫动作按钮
- (IBAction)animationAction:(UIButton *)sender;
-(SystemSoundID)loadSoundId:(NSString *)soundFile;

@end


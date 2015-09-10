//
//  GameViewController.h
//  UI基础－舒尔特表
//
//  Created by Dex on 15/9/6.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <Foundation/Foundation.h>

#pragma mark - 协议定义
//1定义协议
//协议名称通常是委托方类名＋delegate
@protocol GameViewControllerDelegate <NSObject>

//游戏完成
- (void)gameViewDidDone:(NSString *)timeString;
@end

#pragma mark - 接口定义
@interface GameViewController : UIViewController<UIAlertViewDelegate>
//2定义代理
@property(weak, nonatomic)id<GameViewControllerDelegate>delegate;
//按钮集合
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *numberButtons;
//计时器标签
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
- (IBAction)tapNumberButton:(UIButton *)sender;

- (IBAction)done;

+ (NSArray *)createNumberArray;


@end

//
//  ViewController.h
//  UI基础11-石头剪刀布
//
//  Created by Dex on 15/9/5.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *computerImageView;

@property (weak, nonatomic) IBOutlet UIImageView *playerImageView;

@property (weak, nonatomic) IBOutlet UILabel *computerScoreLabel;

@property (weak, nonatomic) IBOutlet UILabel *playerScoreLabel;

@property (weak, nonatomic) IBOutlet UIView *actionView;

@property (weak, nonatomic) IBOutlet UILabel *messageLabel;

//@property (strong, nonatomic) NSInteger computerWinCount;
//
//@property (strong, nonatomic) NSInteger playerWinCount;
//asdfjksal111阿萨德

//继续游戏
- (IBAction)resumeGame:(id)sender;
//玩家出拳
- (IBAction)playAction:(UIButton *)sender;
//判断玩家是否获胜
- (NSInteger)ifPlayerWinWithPlayTag:(NSInteger)playerTag andComputerTag:(NSInteger)playerTag;
//显示猜拳的结果图片
- (NSString *)showResultImageWhichPlayerIs:(NSInteger)playerTag andComputerIs:(NSInteger)computerTag;
- (AVAudioPlayer *)loadMusic;
//加载声音
- (SystemSoundID)loadSound:(NSString *)soundFileName;

@end


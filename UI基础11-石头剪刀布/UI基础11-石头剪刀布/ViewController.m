//
//  ViewController.m
//  UI基础11-石头剪刀布
//
//  Created by Dex on 15/9/5.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    //背景音乐播放器
    AVAudioPlayer *_backMusic;
    NSArray *imageList;
    NSInteger playerWinCount;
    NSInteger computerWinCount;
//    胜利
    SystemSoundID _winSound;
//    失败
    SystemSoundID _faildSound;
//    和局
    SystemSoundID _drewSound;
//    单击
    SystemSoundID _clickSound;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    playerWinCount=0;
    computerWinCount=0;
    imageList=[NSArray array];
    imageList = @[
                           [UIImage imageNamed:@"石头.png"],
                           [UIImage imageNamed:@"剪刀.png"],
                           [UIImage imageNamed:@"布.png"]
                           ];
    //设置序列帧动画的方法
    [_computerImageView setAnimationImages:imageList];
    [_computerImageView setAnimationDuration:1.0f];
    [_computerImageView startAnimating];
    
    [_playerImageView setAnimationImages:imageList];
    [_playerImageView setAnimationDuration:1.0f];
    [_playerImageView startAnimating];
    _backMusic=[self loadMusic];
    [_backMusic play];
//    初始化音效
    _winSound = [self loadSound:@"胜利.aiff"];
    _faildSound = [self loadSound:@"失败.aiff"];
    _drewSound = [self loadSound:@"和局.aiff"];
    _clickSound = [self loadSound:@"点击按钮.aiff"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark 继续游戏
- (IBAction)resumeGame:(id)sender {
    //显示操作面板
    //[_actionView setHidden:NO];
//    
    AudioServicesPlayAlertSound(_clickSound);//带震动的声音
//    AudioServicesPlaySystemSound(_clickSound);
    [UIView animateWithDuration:0.5f animations:^{
        [_actionView setCenter:CGPointMake(_actionView.center.x, _actionView.center.y - 120)];
    }];
    //动画重新开始
    [_computerImageView startAnimating];
    [_playerImageView startAnimating];
    //清空提示面板
    [_messageLabel setText:@""];
    
}
#pragma mark 玩家出拳
- (IBAction)playAction:(UIButton *)sender {
    //生成［0，3）之间的数
    NSInteger computerResult = arc4random() % 3;
    [_messageLabel setText:[self showResultImageWhichPlayerIs:sender.tag andComputerIs:computerResult]];
//    [_actionView setHidden:YES];
    //动画隐藏操作面板
    [UIView animateWithDuration:0.5f animations:^{
        [_actionView setCenter:CGPointMake(_actionView.center.x, _actionView.center.y + 120)];
    }];
    
}
#pragma mark 显示猜拳的结果 判断玩家是否获胜
-(NSString *)showResultImageWhichPlayerIs:(NSInteger)playerTag andComputerIs:(NSInteger)computerTag
{
    //先暂停动画
    [_computerImageView stopAnimating];
    [_playerImageView stopAnimating];
    //显示结果
    [_computerImageView setImage:imageList[computerTag]];
    [_playerImageView setImage:imageList[playerTag]];
    //判断玩家是否获胜
    if ([self ifPlayerWinWithPlayTag:playerTag andComputerTag:computerTag]==1) {
        playerWinCount+=1;
        [_playerScoreLabel setText:[NSString stringWithFormat:@"%d",playerWinCount]];
        AudioServicesPlaySystemSound(_winSound);
        return @"你赢了！";
    }
    else if([self ifPlayerWinWithPlayTag:playerTag andComputerTag:computerTag]==-1)
    {
        computerWinCount+=1;
        [_computerScoreLabel setText:[NSString stringWithFormat:@"%d",computerWinCount]];
        AudioServicesPlaySystemSound(_faildSound);
        return @"你输了！";
    }
    else if([self ifPlayerWinWithPlayTag:playerTag andComputerTag:computerTag]==0)
    {
        playerWinCount+=1;
        computerWinCount+=1;
        [_playerScoreLabel setText:[NSString stringWithFormat:@"%d",playerWinCount]];
        [_computerScoreLabel setText:[NSString stringWithFormat:@"%d",computerWinCount]];
        AudioServicesPlaySystemSound(_drewSound);
        return @"平局！";
    }else
    {
        return @"出错啦！";
    }
    
}
#pragma mark 判断玩家是否获胜
- (NSInteger)ifPlayerWinWithPlayTag:(NSInteger)playerScore andComputerTag:(NSInteger)computerScore
{
    if (playerScore - computerScore==-1||playerScore - computerScore==2) {
        //玩家胜利
        return 1;
    }else if(playerScore - computerScore==1||playerScore - computerScore==-2){
        //玩家失败
        return -1;
    }else if(playerScore - computerScore==0){
        //平局
        return 0;
    }else{
        return 2;
    }
}

#pragma mark 加载音乐
- (AVAudioPlayer *)loadMusic
{
    //    初始化背景音乐播放器,需要指定路径
    NSString *path = [[NSBundle mainBundle]pathForResource:@"背景音乐" ofType:@"caf"];
    NSURL *url = [NSURL fileURLWithPath:path];
    //初始化音频播放器
    AVAudioPlayer *avplayer = [[AVAudioPlayer alloc]initWithContentsOfURL:url error:nil];
    //设置播放器属性
    //    设置循环的次数
    //    循环次数＝0，声音会播放一次
    //    循环次数＝1，声音会播放2次
    //    循环次数《0，声音会循环播放
    [avplayer setNumberOfLoops:-1];
    //播放音乐之前，通常会调用一个方法：准备
    [avplayer prepareToPlay];
    return  avplayer;
}
-(SystemSoundID)loadSound:(NSString *)soundFileName
{
    //1.需要制定声音的文件路径,这个方法需要加载不同的音效
    NSString *path = [[NSBundle mainBundle] pathForResource:soundFileName ofType:nil];
//    将路径字符串转换成url
    NSURL *url = [NSURL fileURLWithPath:path];
//    初始化音效
    SystemSoundID soundId;
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)(url), &soundId);
    return soundId;
    
    
}
@end

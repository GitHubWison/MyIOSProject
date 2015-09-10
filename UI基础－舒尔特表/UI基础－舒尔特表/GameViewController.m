//
//  GameViewController.m
//  UI基础－舒尔特表
//
//  Created by Dex on 15/9/6.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import "GameViewController.h"

@interface GameViewController ()
{
//    用户上次点击的数字
    NSInteger _lastTapNumber;
    SystemSoundID _sID;
//    游戏开始的时间
    NSDate *_gameStartTime;
//    游戏时钟
    NSTimer *_gameTimer;
    
}

@end

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //    记录游戏开始时间，以当前系统的时间作为游戏开始的时间
    _gameStartTime=[NSDate date];
    NSArray *numberarray = [GameViewController createNumberArray];
    //设置按钮上的文字
    for (UIButton *button in _numberButtons) {
        NSString *text = [numberarray[button.tag] stringValue];
        [button setTitle:text forState:UIControlStateNormal];
    }
    _lastTapNumber = 0;
//    设置并启动时钟
//    第一个参数：多长时间会被触发一次
//    第二个参数：如果看到函数的参数有target,一般情况下都用self
//    第三个参数：SEL，需要调用其他的方法，每次时钟被触发的时候去执行的方法
//    最多可以带一个参数，就是时钟本身
//    第四个参数：暂时不用考虑
//    第五个参数：是否重复,通常会设置YES
    _gameTimer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(updateTimer:) userInfo:nil repeats:YES];

    
}
#pragma mark -私有方法
- (void)updateTimer:(NSTimer *)sender
{
//    NSLog(@"过了一秒");
//    此处设置游戏计时标签的内容，提示用户过了多少时间
//    fireDate,是时钟的触发事件
    NSInteger deltaTime = [sender.fireDate timeIntervalSinceDate:_gameStartTime];
//    设置时间的字符串00:00 mm:ss
    NSString *text = [NSString stringWithFormat:@"%02d:%02d",deltaTime / 60,deltaTime % 60];
    [_timerLabel setText:text];
//    NSLog(@"过了一秒  %d",deltaTime);
//    NSLog(@"sender.fireDate ==%@",sender.fireDate);
//    NSLog(@"_gameStartTime ==%@",_gameStartTime);
    
    
    
}

#pragma mark 按钮点击事件
- (IBAction)tapNumberButton:(UIButton *)sender {
//    需要知道按钮中的数字是多少？可以直接把按钮上的文字转换成数字
    NSString * text = [[sender titleLabel] text];
    NSInteger number = [text integerValue];
//    NSLog(@"%d",number);
//    需要顺序点击数字，由小到大
//    因此需要知道用户上次点击的数字
//    判断当前点击的数字是否比上次的点击大1
//    如果大1则对立，则在上次点击的数字中记录当前按钮数字
//    如果不是大1 说明点错了 提示用户，通常用音效
    if ((_lastTapNumber + 1) == number) {
        _lastTapNumber = number;
        [sender setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
//        禁用按钮
        [sender setEnabled:NO];
//        [sender setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    }
    else
    {
//        播放音效
//        点错了
        NSString *path = [[NSBundle mainBundle] pathForResource:@"slap1.m4a" ofType:nil];
        NSURL *url=[NSURL fileURLWithPath:path];
        SystemSoundID soundId;
        AudioServicesCreateSystemSoundID((__bridge CFURLRef)(url), &soundId);
        AudioServicesPlaySystemSound(soundId);
    }
//    如果用户9个都点过了，那就胜利了
//    如果只有一个按钮，那么在cancleButtonTitle设置按钮文字［确定］
    if (_lastTapNumber == 9) {
//        关闭时钟
        [_gameTimer invalidate];
//        取出标签中的文本，提示用户
        NSString *message = [NSString stringWithFormat:@"帅呆了！用时：%@",_timerLabel.text];
//        NSLog(@"胜利了");
//        UIAlertView 是用来提示用户信息的弹出小窗口
//        要监听消息框的确定按钮被点击，需要遵从消息框的协议
//        委托代理执行方法
        [_delegate gameViewDidDone:_timerLabel.text];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:message delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
        
        
    }
    else
    {
        
    }
    
}
#pragma mark - AlertView代理方法
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
//    NSLog(@"点击确定了%d",buttonIndex);
    [self done];
}

#pragma mark 返回主界面
- (IBAction)done {
    [_gameTimer invalidate];
//    关闭当前视图控制器，原来的就露出来了
//    注意：关闭之后当前视图控制器会被释放
//    再次点击上级视图控制器的按钮，本视图控制器的ViewDidLoad方法仍然会被执行
    [self dismissViewControllerAnimated:YES completion:nil];
}

+ (NSArray *)createNumberArray
{
    NSMutableArray *ret=[[NSMutableArray alloc]init];
    for (int i=1; i<10; i++) {
        [ret addObject:@(i)];
    }
    for (NSInteger i=0; i<9; i++) {
        NSInteger seed = i +arc4random_uniform(9-i);
//        交换数据
        [ret exchangeObjectAtIndex:i withObjectAtIndex:seed];
        
    }
    return ret;
}
@end

//
//  ViewController.m
//  UI基础－舒尔特表
//
//  Created by Dex on 15/9/6.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//是ViewController内置的方法，所有在StoryBoard中的连线在推出新的视图控制器之前都会调用这个方法
//可以通过segue中的一个属性获得目标视图控制器
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    GameViewController *controller = [segue destinationViewController];
//    申请成为游戏视图的代理，设置后，游戏视图控制器的协议方法就会在当前视图控制器中执行
    [controller setDelegate:self];
   // [controller setDelegate:<#(id<GameViewControllerDelegate>)#>]
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)gameViewDidDone:(NSString *)timeString
{
//    NSLog(@"游戏用时：%@",timeString);
    [_bestTime setText:timeString];
    
}
@end

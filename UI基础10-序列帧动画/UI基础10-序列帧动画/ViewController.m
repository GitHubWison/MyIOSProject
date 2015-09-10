//
//  ViewController.m
//  UI基础10-序列帧动画
//
//  Created by Dex on 15/9/5.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //序列帧动画是一个序列－》NSMutableArray
    NSMutableArray * imagesList = [NSMutableArray array];
    for (NSInteger i=1; i<11; i++) {
        NSString *fileName = [NSString stringWithFormat:@"%d.png",i];
        UIImage *image = [UIImage imageNamed:fileName];
        //把图像添加到数组
        [imagesList addObject:image];
    }
    //建立序列帧动画
    [_zhaoyunImage setAnimationImages:imagesList];
    //设置动画播放的时长
    [_zhaoyunImage setAnimationDuration:1.0];
    //设置动画播放的次数
    [_zhaoyunImage setAnimationRepeatCount:1];
    //开始动画
    [_zhaoyunImage startAnimating];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

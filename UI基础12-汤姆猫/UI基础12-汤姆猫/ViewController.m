//
//  ViewController.m
//  UI基础12-汤姆猫
//
//  Created by Dex on 15/9/6.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import "ViewController.h"

typedef enum
{
    kTomCatFart = 0,//放屁
    kTomCatCymbal,  //打叉
    kTomCatDrink,
    kTomCatEat,
    kTomCatPie, //拍柄
    kTomCatScratch,//挠玻璃
    kTomCatKnockout,
    kTomCatStomach,
    kTomCatFootRight,
    kTomCatFootLeft,
    kTomCatAngryTail,
    
} kTomCatAnimatinoType;
@interface ViewController ()
{
    NSMutableDictionary *_tomcatDict;
//    音效的数据字典
    NSMutableDictionary *_soundDict;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //加载数据字典
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Tomcat" ofType:@"plist"];
    _tomcatDict = [NSMutableDictionary dictionaryWithContentsOfFile:path];
//    NSLog(@"%@",_tomcatDict);
//    初始化音效的字典
    
    _soundDict = [NSMutableDictionary dictionary];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(SystemSoundID)loadSoundId:(NSString *)soundFile
{
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:soundFile ofType:nil]];
    SystemSoundID syssoundid;
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)(url), &syssoundid);
    return syssoundid;
}
#pragma mark - Actions
- (IBAction)animationAction:(UIButton *)sender {
    //如果汤姆猫正在动画中。不允许动画
    if (![_tomCatImageView isAnimating]) {
        //判断tag
//        设置汤姆猫的图像
//        要让代码可读性更好，可以考路使用枚举
//        引入数据字典会简化操作
        NSDictionary *dict;
        switch (sender.tag) {
            case kTomCatAngryTail:
                dict = _tomcatDict[@"angry-tail"];
                break;
            case kTomCatFart:
                dict = _tomcatDict[@"fart"];
                break;
            case kTomCatCymbal:
                dict = _tomcatDict[@"cymbal"];
                break;
            case kTomCatDrink:
                dict = _tomcatDict[@"drink"];
                break;
            case kTomCatEat:
                dict = _tomcatDict[@"eat"];
                break;
            case kTomCatPie:
                dict = _tomcatDict[@"pie"];
                break;
            case kTomCatScratch:
                dict = _tomcatDict[@"scratch"];
                break;
                
            default:
                break;
        }
        //根据选中的数据字典，初始化序列帧图像
        NSMutableArray *imageList = [NSMutableArray array];
        for (NSInteger i=0; i<[dict[@"frames"] integerValue]; i++) {
            NSString *imageFile = [NSString stringWithFormat:dict[@"imageFormat"],i];
            UIImage *image = [UIImage imageNamed:imageFile];
            [imageList addObject:image];
        }
        //从汤姆猫的数据字典中首先取出声音文件的数组
        NSArray *array = dict[@"soundFiles"];
//        判断数组中是否有数据，如果有数据做进一步处理
        SystemSoundID soundId;
        if (array.count>0) {
            //        我们根据数组中的文件名判断音频字典中是否有对应的记录，如果没有，建立新的音频字典
            for (NSString *fileName in array) {
                SystemSoundID playSoundId = [_soundDict[fileName] unsignedLongValue];
//                如果没有定义音频代号，
                if (playSoundId<=0) {
                    playSoundId = [self loadSoundId:fileName];
                    //将playsoundid加入到数据字典
//                    向nsdictionary中添加数值需要包装
                    [_soundDict setValue:@(playSoundId) forKey:fileName];
                }
            }
            //每一个动画的声音可以是多个，为了保证游戏的可玩度，可以采用随机数的方式
            NSInteger seed = arc4random() % array.count;
            NSString *fileName = array[seed];
//            [self loadSoundId:fileName];
            soundId = [_soundDict[fileName]unsignedLongValue];
            
        }

        
        [_tomCatImageView setAnimationImages:imageList];
        [_tomCatImageView setAnimationDuration:[dict[@"frames"] integerValue]/10.0];
        [_tomCatImageView setAnimationRepeatCount:1];
        [_tomCatImageView startAnimating];
        if(soundId>0){
            AudioServicesPlaySystemSound(soundId);
        }
        
    }
   
}
@end

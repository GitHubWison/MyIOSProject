//
//  ViewController.m
//  PickerView - 04国旗选择
//
//  Created by Dex on 15/9/10.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
//    国旗名字
    NSMutableArray *falgsNameArray;
//    国旗图片
    NSMutableArray *flagsImgaeArray;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self.view initWithFrame:CGRectMake(0, 20, 320, 480)];
    falgsNameArray = [[NSMutableArray alloc]init];
    flagsImgaeArray = [[NSMutableArray alloc]init];
    [self setFlagsNameAndImage];
    //    初始化选择控件
    UIPickerView *picker = [[UIPickerView alloc]initWithFrame:CGRectMake(0, 20, self.view.bounds.size.width, self.view.bounds.size.height-20)];
        //    设置数据源
    [picker setDataSource:self];
    //    设置选择器的代理
    [picker setDelegate:self];
//    设置选中指示器
    [picker setShowsSelectionIndicator:YES];
    [self.view addSubview:picker];
    
}


#pragma mark 设置数据列数
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
#pragma mark 设置数据行数
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return flagsImgaeArray.count;
}
#pragma mark 用自定义视图填充选择器的内容
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    UIView *flagView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 280, 60)];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 80, 60)];
    [label setText:falgsNameArray[row]];
    [label setTextAlignment:NSTextAlignmentCenter];
    [flagView addSubview:label];
    
    UIImageView *flagViewImage = [[UIImageView alloc]initWithFrame:CGRectMake(80, 0, 200, 60)];
    [flagViewImage setImage:flagsImgaeArray[row]];
    [flagView addSubview:flagViewImage];
    
    return flagView;
    
//    switch (component) {
//        case 0:
//        
//        {
//            UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 80, 60)];
//            [label setText:falgsNameArray[row]];
//            [label setTextAlignment:NSTextAlignmentCenter];
//            return label;
//        }
//            break;
//        case 1:
//        {
//            //    自定义一个UIView
//            UIImageView *flagView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 280, 60)];
//            //    自定义完成返回UIView作为选择器的内容
//            [flagView setImage:flagsImgaeArray[row]];
//            return flagView;
//        }
//            
//            break;
//        default:
//            return nil;
//            break;
//    }

}
- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return 80;
}
//从plist中获取国旗名字和图片
-(void)setFlagsNameAndImage
{
    NSString * f = [[NSBundle mainBundle] pathForResource:@"flags" ofType:@"plist"];
    NSMutableArray *dics=[NSMutableArray arrayWithContentsOfFile:f];
    for (NSDictionary *dic in dics) {
        [flagsImgaeArray addObject:[UIImage imageNamed:dic[@"icon"]]] ;
        [falgsNameArray addObject:dic[@"name"]];
    }

}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSLog(@"选择的国家是：%@",falgsNameArray[row]);
}
@end

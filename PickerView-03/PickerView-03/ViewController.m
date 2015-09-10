//
//  ViewController.m
//  PickerView-03
//
//  Created by Dex on 15/9/9.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
//    第一列的数据源
    NSArray *_colOne;
    NSArray *_colTow;
    NSString *left;
    NSString *right;
}
@end

@implementation ViewController
//在制定PickerView的数据源之前，它是不会显示的
//一旦通过PickView的数据源方法指定了数据源，PickView就可以显示了

- (void)viewDidLoad {
    [super viewDidLoad];
//    定义选择器的数据源
    _colOne = @[@"a",@"b",@"c"];
//    第二列的数据源
    _colTow = @[@"1",@"2",@"3",@"4",@"5"];
    
    left=@"a";
    right=@"1";
    
}
#pragma mark -PickerView 数据源方法
//选择器中的列数
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    
    return 2;
}
//每一列（component）的行数（row）
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (component == 0) {
        return _colOne.count;
    }else
    {
        return _colTow.count;
    }
    
}
#pragma mark -PickerView 代理方法
//设置component列row行显示的字符串内容
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (component == 0) {
        return _colOne[row];
    }
    else
    {
        return _colTow[row];
    }
    
}
#pragma mark 选中第component列row行的内容
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    
    if (component == 0) {
//        NSLog(@"第一列%@",_colOne[row]);
        left=_colOne[row];
    }else
    {
//        NSLog(@"第二列%@",_colTow[row]);
        right=_colTow[row];
    }
    NSLog(@"列：%@  行：%@",left,right);
//    NSLog(@"列数：%d  行数：%d  内容：%@",component,row,_colOne[row]);
}
@end

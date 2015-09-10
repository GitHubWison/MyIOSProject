//
//  ViewController.m
//  DatePicker演练
//
//  Created by Dex on 15/9/9.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//      生日文本属性
@property(strong, nonatomic) UITextField *birthdayText;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    1.创建界面ui
//    1.1Label
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(20.0, 20.0, 80.0, 40.0)];
    [label setText:@"生日"];
    [self.view addSubview:label];
//    1.2TextField
    UITextField *birthdayText = [[UITextField alloc] initWithFrame:CGRectMake(100.0, 20.0, 200.0, 40)];
    [birthdayText setPlaceholder:@"请输入生日"];
    [birthdayText setBorderStyle:UITextBorderStyleRoundedRect];
    self.birthdayText = birthdayText;
    [self.view addSubview:birthdayText];
//    1.3日期选择控件
    UIDatePicker *datePicker = [[UIDatePicker alloc]init];
//    [self.view addSubview:datePicker];
//    1.模式：日期，时间，日期和时间
    [datePicker setDatePickerMode:UIDatePickerModeDate];
    [datePicker setLocale:[[NSLocale alloc]initWithLocaleIdentifier:@"zh_Hans_CN"]];
    //监听日期选择控件数值变化
    [datePicker addTarget:self action:@selector(dateChanged:) forControlEvents:UIControlEventValueChanged];
//    设定日期的初始值
    NSString *dateString = @"1949-10-1";
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    NSDate *date = [formatter dateFromString:dateString];
    [datePicker setDate:date];
    //设置生日文本输入使用的视图
    [birthdayText setInputView:datePicker];


}
#pragma mark -日期选择洞见的监听方法
- (void)dateChanged:(UIDatePicker *)datePicker
{
//    NSLog(@"");
    [datePicker.date description];
//    通过岔开NSDate.h文件，发现没有直接的办法转换日期格式
    NSDate *date = datePicker.date;
//    专门用来转换日期格式的对象
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    NSString *dateString = [formatter stringFromDate:date];
    [_birthdayText setText:dateString];
    
}

@end

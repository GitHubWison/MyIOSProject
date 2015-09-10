//
//  ViewController.m
//  pickerView-02照片选择
//
//  Created by Dex on 15/9/9.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//实现了这一代理方法之后，需要手动管不照片选择控制器
- (void)viewDidLoad
{
//     一定要记住要实现父类的方法
    [super viewDidLoad];
    
}
#pragma mark 照片选择器代理方法
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
//
//    目的：照片选择完成，设置图像
    NSLog(@"%@",info);
    UIImage *image = info[@"UIImagePickerControllerEditedImage"];
    [_imageView setImage:image];
//    让当前控制器关闭照片选择控制器
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"complete!");
    }];
}
#pragma mark 选择头像视图
- (IBAction)selectPhoto {
//    要选择头像，需要使用UIImagePickerController
//    1.实例化照片选择控制器
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
//     设置照片源
    [imagePicker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    [imagePicker setAllowsEditing:YES];

//    设置代理
    [imagePicker setDelegate:self];
//    显示控制器,由当前视图控制器负责展现照片选择控制器
    [self presentViewController:imagePicker animated:YES completion:^{
        NSLog(@"SUCCESS");
    }];
    
    
}
@end

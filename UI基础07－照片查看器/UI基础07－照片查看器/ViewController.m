//
//  ViewController.m
//  UI基础07－照片查看器
//
//  Created by Dex on 15/9/4.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import "ViewController.h"
#import "ImageData.h"

@interface ViewController ()
{
    //显示的照片索引
    NSInteger _photoIndex;
}
//图像数组
@property(strong,nonatomic)NSArray *imageData;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _photoIndex=0;
    //可以通过plist文件来维护数据
    //plist文件如何导入到程序中＝》文件有一个文件名，有文件路径
    //需要了解包的概念，在程序运行的时候同样存在一个包
    //1.要获取文件之前，首先要知道“包”是哪个
    NSBundle *bundle = [NSBundle mainBundle];
    
    //2.获取plist文件的文件名
    NSString *path = [bundle pathForResource:@"images" ofType:@"plist"];
    NSLog(@"path==%@",path);
    //把plist文件的文件内容读到数组中
//    _imageData = [NSMutableArray arrayWithContentsOfFile:path];
    _imageData = [ImageData loadImageDataArrayWithPath:path];
    //取出数组中的第一个字典
    ImageData *im = _imageData[0];
//    UIImage *img = [UIImage setI:];
    [_imageview setImage:im.image];
    //取图像标题
    [_imageTitle setText:im.imageTitle];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - 私有方法
-(void)resetPhotoInfoWithIndex{
//    [_imageSlider setValue:_photoIndex + 1];
    //1.设置图像
    //取出当前索引对应的数据字典
//    NSDictionary *dict = _imageData[_photoIndex];
    ImageData *data = _imageData[_photoIndex];
//    UIImage *image=[UIImage imageNamed:dict[@"icon"]];
    //设置图像
    [_imageview setImage:data.image];
    //设置图像说明
    [_imageTitle setText:data.imageTitle];
    [_imageNumberLabel setText:[NSString stringWithFormat:@"%d/16",_photoIndex + 1]];
    
}
#pragma mark - Action
#pragma mark 夜间模式
- (IBAction)nightModel:(id)sender {
    UISwitch *mySwitch = (UISwitch *)sender;
    //开启夜间模式
    if([mySwitch isOn]){
        [self.view setBackgroundColor:[UIColor grayColor]];
    } else {
        // 关闭夜间模式
        [self.view setBackgroundColor:[UIColor whiteColor]];
    }
    
}
#pragma mark 滑块数值变化
- (IBAction)sliderChanger:(id)sender {
    //注意滑块控件是没有step之类的属性
    UISlider *mySlider = (UISlider * )sender;
//    NSLog(@"滑块的数值%f",[mySlider value]);
//    NSInteger index = mySlider.value;
    if (mySlider.value != _photoIndex) {
        _photoIndex = mySlider.value;
        //计数器和计数同步
        _imageStepter.value = _photoIndex;
    [self resetPhotoInfoWithIndex];
        NSLog(@"photoindex==%d",_photoIndex);
    }


    
}
#pragma mark 计数器数值变化
- (IBAction)steperChanger:(id)sender {
    UIStepper *myStepper = (UIStepper *)sender;
//    NSLog(@"计数器数值 %f",[myStepper value]);
//    NSInteger index =
    _photoIndex = myStepper.value;
    _imageSlider.value = _photoIndex;
    [self resetPhotoInfoWithIndex];
    NSLog(@"photoindex==%d",_photoIndex);
   

    
    
}
@end

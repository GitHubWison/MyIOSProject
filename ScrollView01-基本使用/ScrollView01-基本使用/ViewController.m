//
//  ViewController.m
//  ScrollView01-基本使用
//
//  Created by Dex on 15/9/8.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIImageView *_imageView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    1.创建一个图像视图
//    1.1创建一个uiimage
    UIImage *image = [UIImage imageNamed:@"001.jpeg"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
//    [imageView setFrame:CGRectMake(0, 0, 100, 100)];
    [_scrollView addSubview:imageView];
//    2.设置滚动视图属性
    [_scrollView setContentSize:image.size];
    UIEdgeInsets edge = UIEdgeInsetsMake(10.0, 10.0, 10.0, 10.0);
    [_scrollView setContentInset:edge];
    [_scrollView setBackgroundColor:[UIColor grayColor]];
//    3.演练ScrollView的其他属性
    [_scrollView setBounces:NO];
//    [_scrollView setScrollEnabled:NO];
//    禁用滚动条
    [_scrollView setShowsHorizontalScrollIndicator:NO];
    [_scrollView setShowsVerticalScrollIndicator:NO];
//以下代码演练滚动视图的缩放
    [_scrollView setMinimumZoomScale:0.2];
    [_scrollView setMaximumZoomScale:2.0];
//    设置代理
    [_scrollView setDelegate:self];
    _imageView = imageView;
}
#pragma mark 滚动视图的代理方法
//代理方法的返回值就是要缩放的视图对象
-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
//    换个图像试试看
//    NSString *imageFile = [NSString stringWithFormat:@"%03d.jpeg",arc4random_uniform(10)+1];
//    UIImage *image = [UIImage imageNamed:imageFile];
//    _imageView.image=image;
    return _imageView;
}
//缩放完成的代理方法
-(void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(UIView *)view atScale:(CGFloat)scale
{
    NSLog(@"缩放完成 %f",scale);
}
//缩放中的代理方法
-(void)scrollViewDidZoom:(UIScrollView *)scrollView
{
    NSLog(@"缩放中。。。");
}
#pragma mark 移动图像
- (IBAction)moveImage:(UIButton *)sender {
//    _scrollView.contentOffset
    CGPoint offset = _scrollView.contentOffset;
    switch (sender.tag) {
        case 0:
            offset.x -= 50;
            break;
        case 1:
            offset.y -= 50;
            break;
        case 2:
            offset.y += 50;
            break;
        case 3:
            offset.x += 50;
            break;
        default:
            break;
    }
//    需要做一下修正
//    水平方向
    if (offset.x<-10) {
        offset.x = -10;
    }
    else if(offset.x > _scrollView.contentSize.width - _scrollView.bounds.size.width + 10){
        offset.x = _scrollView.contentSize.width - _scrollView.bounds.size.width + 10;
    }
//    垂直方向
    if (offset.y < -10) {
        offset.y = -10;
    }
    else if(offset.y > _scrollView.contentSize.height - _scrollView.bounds.size.height + 10)
    {
        offset.y = _scrollView.contentSize.height - _scrollView.bounds.size.height + 10;
    }
//    修改图像的偏移位置
//    [UIView animateWithDuration:0.3f animations:^{
//        [_scrollView setContentOffset:offset];
//    }];
    [_scrollView setContentOffset:offset animated:YES];
    
}
@end

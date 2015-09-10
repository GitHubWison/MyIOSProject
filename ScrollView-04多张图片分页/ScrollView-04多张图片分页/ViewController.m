//
//  ViewController.m
//  ScrollView-04多张图片分页
//
//  Created by Dex on 15/9/9.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIScrollView *_scrollView;
    UIPageControl *_pageControl;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self.view initWithFrame:CGRectMake(0, 20, self.view.bounds.size.width, self.view.bounds.size.height-20)];
//    1.创建ScrollView
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 20, self.view.bounds.size.width, self.view.bounds.size.height-20)];
    CGFloat width = scrollView.bounds.size.width;
    CGFloat height = scrollView.bounds.size.height;
//     添加scrollView的内容
    for (int i=1; i<=5; i++) {
//        2.1UIImage
        NSString *imageFile = [NSString stringWithFormat:@"%d.jpg",i];
        UIImage *image = [UIImage imageNamed:imageFile];
//        imageView
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
//        需要设置uiimageview的位置
        NSInteger x = (i-1)*width;
        
        [imageView setFrame:CGRectMake(x, 0, width, height)];
//        将图像添加到滚动视图
        [scrollView addSubview:imageView];
    }
//    [self.view addSubview:scrollView];
    
//    加小点点
    UIPageControl *pageControl = [[UIPageControl alloc]init];
//    设置点点的背景色
//    [pageControl setBackgroundColor:[UIColor greenColor]];
//    设置大小
    [pageControl setBounds:CGRectMake(0, 0, 150.0, 50.0)];
//    设置位置
    [pageControl setCenter:CGPointMake(self.view.bounds.size.width/2, self.view.bounds.size.height-50)];
    //    设置一共要多少个点点
    [pageControl setNumberOfPages:5];
    //    设置当前的点点
    [pageControl setCurrentPage:0];
//    设置当前点点的颜色
    [pageControl setCurrentPageIndicatorTintColor:[UIColor redColor]];
//    设置未选的点点的颜色
    [pageControl setPageIndicatorTintColor:[UIColor grayColor]];
//    添加监听事件使得点击小点点的时候对应出相应的图
    [pageControl addTarget:self action:@selector(onIndicatorChange:) forControlEvents:UIControlEventValueChanged];
    
//设置滚动视图的属性
    [scrollView setBounces:NO];
    [scrollView setShowsHorizontalScrollIndicator:NO];
    [scrollView setContentSize:CGSizeMake(5 * width, height)];
//    允许滚动视图的分页显示
    [scrollView setPagingEnabled:YES];
    
//添加滚动的事件，让图片在滚动的同时改变小点点的状态
    [scrollView setDelegate:self];
    
    _scrollView=scrollView;
    _pageControl=pageControl;
    [self.view addSubview:scrollView];
    //    加入到view中，注意要加到scrollview的后面，否则看不到添加的pagecontrol
    [self.view addSubview:pageControl];
}
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
//    NSLog(@"********");
//    获取当前scrollView的offset，并计算出滚动到了什么地方
    NSInteger offsetx = scrollView.contentOffset.x/scrollView.bounds.size.width;
//    改变小点点的状态
    [_pageControl setCurrentPage:offsetx];
}
#pragma mark -小点点变化事件
- (void)onIndicatorChange:(UIPageControl *)pageControl
{
//    NSLog(@"变化了！！");
//    获取到了那个点
    NSInteger pno = pageControl.currentPage;
//    改变图片
    [_scrollView setContentOffset:CGPointMake(pno*self.view.bounds.size.width, 0) animated:YES];
}

@end

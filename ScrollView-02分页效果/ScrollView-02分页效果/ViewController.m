//
//  ViewController.m
//  ScrollView-02分页效果
//
//  Created by Dex on 15/9/8.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
//    分页控件
    UIPageControl *_pager;
//    滚动视图
    UIScrollView *_scroll;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
//    设置ScrollView的内容
    UIImage *image = [UIImage imageNamed:@"keke01"];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:image];
    [scrollView addSubview:imageView];
//    设置ScrollView属性
    [scrollView setContentSize:image.size];
//    允许分页
    [scrollView setPagingEnabled:YES];
//    去掉滚动条
    [scrollView setShowsHorizontalScrollIndicator:NO];
//    去掉回弹
    [scrollView setBounces:NO];
//    将滚动视图添加到view
    [self.view addSubview:scrollView];
//    设置滚动视图的代理
    [scrollView setDelegate:self];
//    增加分页控件
    UIPageControl *pageControl = [[UIPageControl alloc]init];
//    [pageControl setBackgroundColor:[UIColor greenColor]];
//    设置位置和大小
    [pageControl setBounds:CGRectMake(0, 0, 150.0, 50.0)];
    [pageControl setCenter:CGPointMake(self.view.bounds.size.width/2, self.view.bounds.size.height-100)];
//    设置页面属性
    [pageControl setNumberOfPages:2];
    [pageControl setCurrentPage:0];
//    当前页面被选中的标示颜色
    [pageControl setCurrentPageIndicatorTintColor:[UIColor redColor]];
//    需要监听分页控件的变化,所带的参数就是它自己
    [pageControl addTarget:self action:@selector(updatePageChanged:) forControlEvents:UIControlEventValueChanged];
//    其他页面的标示颜色
    [pageControl setPageIndicatorTintColor:[UIColor blackColor]];
//    添加到视图
    [self.view addSubview:pageControl];
    _pager = pageControl;
    _scroll = scrollView;
}
#pragma mark -分页控件的监听方法
- (void) updatePageChanged:(UIPageControl *)pageControl
{
//    NSLog(@"%d",pageControl.currentPage);
    CGFloat offsetX = pageControl.currentPage * _scroll.bounds.size.width;
    [_scroll setContentOffset:CGPointMake(offsetX, 0) animated:YES];
    
}
#pragma mark -滚动视图代理方法
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
//    设置 pageControl的页数
    NSInteger pageNo = scrollView.contentOffset.x / scrollView.bounds.size.width;
    [_pager setCurrentPage:pageNo];
}

@end

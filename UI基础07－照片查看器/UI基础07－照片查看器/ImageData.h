//
//  ImageData.h
//  UI基础07－照片查看器
//
//  Created by Dex on 15/9/5.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ImageData : NSObject
//图片
@property (strong,nonatomic) UIImage *image;
//图片标题
@property (strong,nonatomic) NSString *imageTitle;
//初始化图片对象
-(id)initWithDisctionary:(NSDictionary *)dict;
//使用文件路径加载图像数据
+(NSArray *)loadImageDataArrayWithPath:(NSString *)path;
@end

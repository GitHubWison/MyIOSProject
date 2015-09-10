//
//  ImageData.m
//  UI基础07－照片查看器
//
//  Created by Dex on 15/9/5.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import "ImageData.h"

@implementation ImageData
-(id)initWithDisctionary:(NSDictionary *)dict
{
    self = [super init];
    if (self) {
        _image = [UIImage imageNamed:dict[@"icon"]];
        _imageTitle = dict[@"title"];
    }
    return self;
}
+(NSArray *)loadImageDataArrayWithPath:(NSString *)path
{
    NSMutableArray *images = [NSMutableArray array];
    NSArray *array = [NSArray arrayWithContentsOfFile:path];
    for (NSDictionary *dic in array) {
        ImageData * imagedata = [[ImageData alloc] initWithDisctionary:dic];
        [images addObject:imagedata];
    }
    return images;
}
@end

//
//  TomCatBehavier.h
//  TomTest
//
//  Created by Dex on 15/9/5.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TomCatBehavier : NSObject
@property (strong, nonatomic) NSMutableArray * beArray;
//获得tomcat的相应的行为数组
-(id)initBehavier:(NSString *)behavier picNois:(int)picno;
-(void)excuteTomcatBehavier:(UIImageView *)tomactive durationTimeIs:(float)time;
+(NSString *)fourDel:(NSInteger)num;
@end

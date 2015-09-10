//
//  TomCatBehavier.m
//  TomTest
//
//  Created by Dex on 15/9/5.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import "TomCatBehavier.h"

@implementation TomCatBehavier

-(id)initBehavier:(NSString *)behavier picNois:(int)picno
{
    self = [super init];
    if (self) {
        _beArray = [[NSMutableArray alloc] init];
        for (NSInteger i = 0; i < picno; i ++) {
            UIImage *img=[UIImage imageNamed:[NSString stringWithFormat:@"%@%@.jpg",behavier,[TomCatBehavier fourDel:i]]];
            [self.beArray addObject:img];
        
        }
    }
    return self;
}
-(void)excuteTomcatBehavier:(UIImageView *)tomactive durationTimeIs:(float)time
{
    [tomactive setAnimationDuration:time];
    [tomactive setAnimationImages:_beArray];
    [tomactive setAnimationRepeatCount:1];
    [tomactive startAnimating];
}
+(NSString *)fourDel:(NSInteger)num
{
    NSMutableString *wei=[[NSMutableString alloc] initWithString:@""];
    NSInteger chu=1000;
    for (NSInteger i=0; i<4; i++) {
        [wei appendFormat:@"%d",num/chu];
        num = num%chu;
        chu/=10;
    }
    return  wei;
}
@end

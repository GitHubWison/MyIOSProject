//
//  ViewController.h
//  TomTest
//
//  Created by Dex on 15/9/5.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *tomcatActive;


- (IBAction)kickRightFoot:(id)sender;

- (IBAction)kickLeftFoot:(id)sender;

- (IBAction)touchMonth:(id)sender;

-(void)executeActivieWhichBehavieris:(NSString *)behavier andPicNoIs:(NSInteger)picno andDurationTimeIs:(float)time;

@end


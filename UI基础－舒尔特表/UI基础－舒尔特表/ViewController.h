//
//  ViewController.h
//  UI基础－舒尔特表
//
//  Created by Dex on 15/9/6.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameViewController.h"
@interface ViewController : UIViewController<GameViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *bestTime;

@end


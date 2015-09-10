//
//  ViewController.h
//  PickerView - 04国旗选择
//
//  Created by Dex on 15/9/10.
//  Copyright (c) 2015年 Dex.XU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>

- (void)setFlagsNameAndImage;
@end


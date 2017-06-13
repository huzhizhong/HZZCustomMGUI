//
//  NYSegmentViewController.h
//  NYCatEyes
//
//  Created by hzz on 17/06/11.
//  Copyright (c) 2015年 hzz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NYSegmentControll.h"
#import "HZZBaseViewController.h"

@interface NYSegmentViewController : HZZBaseViewController

@property (nonatomic, copy) NSArray *viewControllerArray;
@property (nonatomic, copy) NSArray *titleArray;

/** 指示视图的颜色 */
@property (nonatomic, strong) UIColor *indicatorViewColor;
/** segment的背景颜色 */
@property (nonatomic, strong) UIColor *segmentBgColor;
/** segment每一项的宽 */
@property (nonatomic, assign) CGFloat itemWidth;
/** segment每一项的高 */
@property (nonatomic, assign) CGFloat itemHeight;
@end




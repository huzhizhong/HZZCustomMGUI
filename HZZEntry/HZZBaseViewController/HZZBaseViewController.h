//
//  HZZBaseViewController.h
//  HZZCustomMGUI
//
//  Created by tgjr-Hzz on 2017/6/11.
//  Copyright © 2017年 Hzz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HZZBaseViewController : UIViewController

- (void)leftItemTapped;
- (void)rightItemTapped;

- (void)setLeftNaviItemWithTitle:(NSString *)title imageName:(NSString *)imageName;
- (void)setRightNaviItemWithTitle:(NSString *)title imageName:(NSString *)imageName;
- (void)setLeftNaviItemWithTitle:(NSString *)title size:(CGFloat)size imageName:(NSString *)imageName;
- (void)setNaviTitle:(NSString *)title size:(CGFloat)size;

@end

//
//  CustomeViewController.m
//  NYCatEyes
//
//  Created by hzz on 17/06/11.
//  Copyright (c) 2015年 hzz. All rights reserved.
//

#import "CustomeViewController.h"

@interface CustomeViewController ()

@end

@implementation CustomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.delegate = self;
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    viewController.hidesBottomBarWhenPushed = YES;
    [super pushViewController:viewController animated:animated];
}

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    
}
@end

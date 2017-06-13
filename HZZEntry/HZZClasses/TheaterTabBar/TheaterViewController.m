//
//  TheaterViewController.m
//  NYCatEyes
//
//  Created by hzz on 15/10/8.
//  Copyright (c) 2015年 hzz. All rights reserved.
//

#import "TheaterViewController.h"

@interface TheaterViewController ()

@end

@implementation TheaterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setNaviTitle:@"影院" size:16];
    [self setLeftNaviItemWithTitle:@"苏州 >" size:12 imageName:nil];
    [self setRightNaviItemWithTitle:nil imageName:@"btn_search.png"];
}


@end

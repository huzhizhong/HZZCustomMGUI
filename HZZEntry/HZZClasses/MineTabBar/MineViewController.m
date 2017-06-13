//
//  MineViewController.m
//  NYCatEyes
//
//  Created by hzz on 15/10/8.
//  Copyright (c) 2015年 hzz. All rights reserved.
//

#import "MineViewController.h"


@interface MineViewController ()

@property (nonatomic, strong) UIImageView *bgView;
@end

@implementation MineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setNaviTitle:@"我的" size:16];
    [self.view addSubview:self.bgView];
}

- (UIImageView *)bgView
{
    if (!_bgView) {
        _bgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
        _bgView.backgroundColor = [UIColor yellowColor];
        
    }
    return _bgView;
}

@end

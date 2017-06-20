//
//  UIScrollView+NYRefresh.h
//  NYRefresh
//
//  Created by hzz on 17/6/20.
//  Copyright © 2017年 hzz. All rights reserved.
//

#import <UIKit/UIKit.h>
@class NYRefreshHeader;

@interface UIScrollView (NYRefresh)

///headerView视图层级，需在headerView之前设置
@property (nonatomic, assign) NSInteger headerViewIndex;

@property (nonatomic, strong) NYRefreshHeader *ny_header;


@end

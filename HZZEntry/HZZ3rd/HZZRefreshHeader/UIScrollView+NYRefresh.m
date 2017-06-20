//
//  UIScrollView+NYRefresh.m
//  NYRefresh
//
//  Created by hzz on 17/6/20.
//  Copyright © 2017年 hzz. All rights reserved.
//

#import "UIScrollView+NYRefresh.h"

#import "HZZRefreshHeader.h"

#import <objc/runtime.h>

@implementation UIScrollView (NYRefresh)

static const char NYRefreshHeaderKey = '\0';
static const char NYRefreshHeaderIndexKey = '\1';

#pragma mark Associate HeaderView
- (void)setNy_header:(NYRefreshHeader *)ny_header
{
    if (ny_header != self.ny_header) {
        [self.ny_header removeFromSuperview];
        [self insertSubview:ny_header atIndex:(self.headerViewIndex)?:0];
        
        //手动KVO
        [self willChangeValueForKey:@"ny_header"];
        objc_setAssociatedObject(self, &NYRefreshHeaderKey, ny_header, OBJC_ASSOCIATION_ASSIGN);
        [self didChangeValueForKey:@"ny_header"];
    }
    objc_setAssociatedObject(self, &NYRefreshHeaderKey, ny_header, OBJC_ASSOCIATION_ASSIGN);
}

- (NYRefreshHeader *)ny_header
{
    return objc_getAssociatedObject(self,&NYRefreshHeaderKey);
}

#pragma mark Asscociate HeaderViewIndex
- (void)setHeaderViewIndex:(NSInteger)headerViewIndex
{
    objc_setAssociatedObject(self, &NYRefreshHeaderIndexKey, @(headerViewIndex), OBJC_ASSOCIATION_ASSIGN);
}

- (NSInteger)headerViewIndex
{
    return [objc_getAssociatedObject(self,&NYRefreshHeaderIndexKey) integerValue];
}

@end

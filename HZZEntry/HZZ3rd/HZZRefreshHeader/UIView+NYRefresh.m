//
//  UIView+NYRefresh.m
//  NYRefresh
//
//  Created by hzz on 17/6/20.
//  Copyright © 2017年 hzz. All rights reserved.
//

#import "UIView+NYRefresh.h"

@implementation UIView (NYRefresh)

- (void)setH:(float)h {
    CGRect frm = self.frame;
    frm.size.height = h;
    self.frame = frm;
}

- (float)h {
    return self.frame.size.height;
}

- (void)setW:(float)w {
    CGRect frm = self.frame;
    frm.size.width = w;
    self.frame = frm;
}

- (float)w {
    return self.frame.size.width;
}

- (void)setX:(float)x {
    CGRect frm = self.frame;
    frm.origin.x = x;
    self.frame = frm;
    
}

- (float)x {
    return self.frame.origin.x;
}

- (void)setY:(float)y {
    CGRect frm = self.frame;
    frm.origin.y = y;
    self.frame = frm;
}

- (float)y {
    return self.frame.origin.y;
}


- (void)setCenterX:(CGFloat)centerX {
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat)centerX {
    return self.center.x;
}

- (void)setCenterY:(CGFloat)centerY {
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (CGFloat)centerY {
    return self.center.y;
}

- (CGFloat)width{
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width {
    CGRect frm = self.frame;
    frm.size.width = width;
    self.frame = frm;
}

- (CGFloat)height{
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height{
    CGRect frm = self.frame;
    frm.size.height = height;
    self.frame = frm;
}

@end

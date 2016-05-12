//
//  UIView+LPExtension.m
//  LPFilterMenuView
//
//  Created by Allen on 16/5/12.
//  Copyright © 2016年 watermelon_lp. All rights reserved.
//

#import "UIView+LPExtension.h"

@implementation UIView (LPExtension)

- (void)setLp_x:(CGFloat)lp_x {
    CGRect frame = self.frame;
    frame.origin.x = lp_x;
    self.frame = frame;
}

- (void)setLp_y:(CGFloat)lp_y {
    CGRect frame = self.frame;
    frame.origin.y = lp_y;
    self.frame = frame;
}

- (void)setLp_width:(CGFloat)lp_width {
    CGRect frame = self.frame;
    frame.size.width = lp_width;
    self.frame = frame;
}

- (void)setLp_height:(CGFloat)lp_height {
    CGRect frame = self.frame;
    frame.size.height = lp_height;
    self.frame = frame;
}

- (CGFloat)lp_x {
    return self.frame.origin.x;
}

- (CGFloat)lp_y {
    return self.frame.origin.y;
}

- (CGFloat)lp_width {
    return self.frame.size.width;
}

- (CGFloat)lp_height {
    return self.frame.size.height;
}

- (CGFloat)lp_right {
    return CGRectGetMaxX(self.frame);
}

@end

//
//  UIView+LPExtension.h
//  LPFilterMenuView
//
//  Created by Allen on 16/5/12.
//  Copyright © 2016年 watermelon_lp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (LPExtension)

@property (nonatomic, assign) CGFloat lp_x;
@property (nonatomic, assign) CGFloat lp_y;
@property (nonatomic, assign) CGFloat lp_width;
@property (nonatomic, assign) CGFloat lp_height;

@property (nonatomic, assign, readonly) CGFloat lp_right;

@end

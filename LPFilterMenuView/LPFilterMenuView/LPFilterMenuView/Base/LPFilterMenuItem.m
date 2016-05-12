//
//  LPFilterMenuItem.m
//  hunlimao
//
//  Created by Allen on 16/5/12.
//  Copyright © 2016年 taoximao. All rights reserved.
//

#import "LPFilterMenuItem.h"

#import "UIView+LPExtension.h"
#import "LPFilterMenuNormalItem.h"
#import "LPFilterMenuSpecialItem.h"
#import "LPFilterMenuRepeatItem.h"

@interface LPFilterMenuItem ()


@end


@implementation LPFilterMenuItem

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setUpInit];
    }
    return self;
}

- (void)setUpInit {
    [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
    self.titleLabel.font = [UIFont systemFontOfSize:14];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    if (!self.imageView.image) return;
    
    CGFloat margin = (self.lp_width - self.titleLabel.lp_width - self.imageView.lp_width) * 0.5;
    self.titleLabel.lp_x = margin;
    self.imageView.lp_x = self.titleLabel.lp_right + 5;
    
}

- (instancetype)initWithTitle:(NSString *)title {
    return [self initWithTitle:title image:nil selectedImage:nil];
}

- (instancetype)initWithTitle:(NSString *)title image:(UIImage *)image selectedImage:(UIImage *)selectedImage {
    if (self = [super init]) {
        [self setTitle:title forState:UIControlStateNormal];
        [self setImage:image forState:UIControlStateNormal];
        [self setImage:selectedImage forState:UIControlStateSelected];
    }
    return self;
}


- (void)selectedState {
    if ([self isKindOfClass:[LPFilterMenuSpecialItem class]]) {
        self.selected = YES;
    }
}

- (void)normalState {
    if ([self isKindOfClass:[LPFilterMenuSpecialItem class]]) {
        self.selected = NO;
    }
}

@end




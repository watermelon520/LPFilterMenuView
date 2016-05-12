//
//  LPFilterMenuItem.h
//  hunlimao
//
//  Created by Allen on 16/5/12.
//  Copyright © 2016年 taoximao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LPFilterMenuItem : UIButton

- (void)selectedState;
- (void)normalState;

- (instancetype)initWithTitle:(NSString *)title;

- (instancetype)initWithTitle:(NSString *)title image:(UIImage *)image selectedImage:(UIImage *)selectedImage;

@end

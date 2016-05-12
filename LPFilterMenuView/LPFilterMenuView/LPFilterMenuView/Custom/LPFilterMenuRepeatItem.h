//
//  LPFilterMenuRepeatItem.h
//  hunlimao
//
//  Created by Allen on 16/5/12.
//  Copyright © 2016年 taoximao. All rights reserved.
//

#import "LPFilterMenuItem.h"

typedef enum : NSUInteger {
    LPFilterMenuRepeatItemTypeNormal,
    LPFilterMenuRepeatItemTypeSelected,
    LPFilterMenuRepeatItemTypeRepeatSelected,
} LPFilterMenuRepeatItemType;

@interface LPFilterMenuRepeatItem : LPFilterMenuItem

@property (nonatomic, assign) LPFilterMenuRepeatItemType type;


+ (instancetype)filterMenuRepeatItemWithTitle:(NSString *)title image:(UIImage *)image selectedImage:(UIImage *)selectedImage repeatSelectedImage:(UIImage *)repeatSelectedImage;
- (instancetype)initWithTitle:(NSString *)title image:(UIImage *)image selectedImage:(UIImage *)selectedImage repeatSelectedImage:(UIImage *)repeatSelectedImage;

@end

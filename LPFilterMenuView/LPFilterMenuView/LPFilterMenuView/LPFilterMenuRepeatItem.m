//
//  LPFilterMenuRepeatItem.m
//  hunlimao
//
//  Created by Allen on 16/5/12.
//  Copyright © 2016年 taoximao. All rights reserved.
//

#import "LPFilterMenuRepeatItem.h"

@interface LPFilterMenuRepeatItem ()

@property (nonatomic, strong) UIImage *selectedImage;
@property (nonatomic, strong) UIImage *repeatSelectedImage;

@end

@implementation LPFilterMenuRepeatItem

+ (instancetype)filterMenuRepeatItemWithTitle:(NSString *)title image:(UIImage *)image selectedImage:(UIImage *)selectedImage repeatSelectedImage:(UIImage *)repeatSelectedImage {
    return [[self alloc] initWithTitle:title image:image selectedImage:selectedImage repeatSelectedImage:repeatSelectedImage];
}

- (instancetype)initWithTitle:(NSString *)title image:(UIImage *)image selectedImage:(UIImage *)selectedImage repeatSelectedImage:(UIImage *)repeatSelectedImage {

    self.repeatSelectedImage = repeatSelectedImage;
    self.selectedImage = selectedImage;

    return [self initWithTitle:title image:image selectedImage:selectedImage];;
}

- (void)setType:(LPFilterMenuRepeatItemType)type {
    _type = type;
    
    if (type == LPFilterMenuRepeatItemTypeSelected) {
        [self setImage:self.selectedImage forState:UIControlStateSelected];
    } else if (type == LPFilterMenuRepeatItemTypeRepeatSelected) {
        [self setImage:self.repeatSelectedImage forState:UIControlStateSelected];
    }
}

@end

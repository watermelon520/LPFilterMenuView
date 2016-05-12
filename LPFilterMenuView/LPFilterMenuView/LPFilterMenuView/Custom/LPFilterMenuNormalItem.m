//
//  LPFilterMenuNormalItem.m
//  hunlimao
//
//  Created by Allen on 16/5/12.
//  Copyright © 2016年 taoximao. All rights reserved.
//

#import "LPFilterMenuNormalItem.h"

@implementation LPFilterMenuNormalItem

+ (instancetype)filterMenuNormalItemWithTitle:(NSString *)title {
    return [self filterMenuNormalItemWithTitle:title image:nil selectedImage:nil];
}

+ (instancetype)filterMenuNormalItemWithTitle:(NSString *)title image:(UIImage *)image selectedImage:(UIImage *)selectedImage {
    return [[self alloc] initWithTitle:title image:image selectedImage:selectedImage];
}

@end

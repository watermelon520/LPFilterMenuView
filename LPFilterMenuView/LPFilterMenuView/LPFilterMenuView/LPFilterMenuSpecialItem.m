//
//  LPFilterMenuSpecialItem.m
//  hunlimao
//
//  Created by Allen on 16/5/12.
//  Copyright © 2016年 taoximao. All rights reserved.
//

#import "LPFilterMenuSpecialItem.h"

@implementation LPFilterMenuSpecialItem

+ (instancetype)filterMenuSpecialItemWithTitle:(NSString *)title {
    return [self filterMenuSpecialItemWithTitle:title image:nil selectedImage:nil];
}

+ (instancetype)filterMenuSpecialItemWithTitle:(NSString *)title image:(UIImage *)image selectedImage:(UIImage *)selectedImage {
    return [[self alloc] initWithTitle:title image:image selectedImage:selectedImage];
}

@end

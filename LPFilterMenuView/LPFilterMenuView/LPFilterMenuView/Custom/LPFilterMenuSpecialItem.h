//
//  LPFilterMenuSpecialItem.h
//  hunlimao
//
//  Created by Allen on 16/5/12.
//  Copyright © 2016年 taoximao. All rights reserved.
//

#import "LPFilterMenuItem.h"

@interface LPFilterMenuSpecialItem : LPFilterMenuItem

+ (instancetype)filterMenuSpecialItemWithTitle:(NSString *)title;
+ (instancetype)filterMenuSpecialItemWithTitle:(NSString *)title image:(UIImage *)image selectedImage:(UIImage *)selectedImage;

@end

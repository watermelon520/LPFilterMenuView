//
//  LPFilterMenuNormalItem.h
//  hunlimao
//
//  Created by Allen on 16/5/12.
//  Copyright © 2016年 taoximao. All rights reserved.
//

#import "LPFilterMenuItem.h"

@interface LPFilterMenuNormalItem : LPFilterMenuItem

+ (instancetype)filterMenuNormalItemWithTitle:(NSString *)title;
+ (instancetype)filterMenuNormalItemWithTitle:(NSString *)title image:(UIImage *)image selectedImage:(UIImage *)selectedImage;

@end

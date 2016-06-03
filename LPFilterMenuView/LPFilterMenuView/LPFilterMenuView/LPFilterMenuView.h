//
//  LPFilterMenuView.h
//  hunlimao
//
//  Created by Allen on 16/5/11.
//  Copyright © 2016年 taoximao. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LPFilterMenuItem, LPFilterMenuView;

@protocol LPFilterMenuViewDelegate <NSObject>

@optional
- (void)filterMenuView:(LPFilterMenuView *)filterMenuView didClickFilterMenuItem:(LPFilterMenuItem *)filterMenuItem;

@end


@interface LPFilterMenuView : UIView

@property (nonatomic, assign) NSInteger firstClickIndex;
@property (nonatomic, strong) NSArray <LPFilterMenuItem *> *lp_menuItems;
@property (nonatomic, assign) id <LPFilterMenuViewDelegate> delegate;

@property (nonatomic, assign, getter=isShowSeparateView) BOOL showSeparateView;//是否显示底部分割线，高度为1
@property (nonatomic, strong) UIColor *separateViewColor;//底部分割线颜色

@end





//
//  LPFilterMenuView.m
//  hunlimao
//
//  Created by Allen on 16/5/11.
//  Copyright © 2016年 taoximao. All rights reserved.
//

#import "LPFilterMenuView.h"

#import "UIView+LPExtension.h"
#import "LPFilterMenuItem.h"
#import "LPFilterMenuNormalItem.h"
#import "LPFilterMenuSpecialItem.h"
#import "LPFilterMenuRepeatItem.h"


@interface LPFilterMenuView ()

@property (nonatomic, weak) UIButton *selectedItem;
@property (nonatomic, weak) UIView *separateView;

@end

@implementation LPFilterMenuView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setUpInit];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self setUpInit];
    }
    return self;
}

- (void)setUpInit {
    self.firstClickIndex = 0;
    self.separateViewColor = [UIColor grayColor];
}

- (void)setLp_menuItems:(NSArray<LPFilterMenuItem *> *)lp_menuItems {
    _lp_menuItems = lp_menuItems;
    
    for (LPFilterMenuItem *item in lp_menuItems) {
        [self addSubview:item];
        [item addTarget:self action:@selector(clickItemButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    [self clickItemButton:lp_menuItems[self.firstClickIndex]];
}

- (void)setFirstClickIndex:(NSInteger)firstClickIndex {
    [self clickItemButton:self.lp_menuItems[self.firstClickIndex]];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGFloat width = self.lp_width / self.lp_menuItems.count;
    
    for (int i = 0; i < self.lp_menuItems.count; i++) {
        
        LPFilterMenuItem *item = self.lp_menuItems[i];
        item.frame = CGRectMake(width * i, 0, width, self.lp_height);
        
    }
    
    if (self.lp_menuItems.count && self.isShowSeparateView) {
        self.separateView.hidden = NO;
        self.separateView.backgroundColor = self.separateViewColor;
        self.separateView.frame = CGRectMake(0, self.lp_height - 1, self.lp_width, 1);
        
    }
    
}

#pragma mark - ecent

- (void)clickItemButton:(LPFilterMenuItem *)sender {
    
    if ([sender isKindOfClass:[LPFilterMenuNormalItem class]]) {
        
        [self clickNormalItem:(LPFilterMenuNormalItem *)sender];
        
    } else if ([sender isKindOfClass:[LPFilterMenuSpecialItem class]]) {
        
        [self clickSpecialItem:(LPFilterMenuSpecialItem *)sender];
        
    } else if ([sender isKindOfClass:[LPFilterMenuRepeatItem class]]) {
        
        [self clickRepeatItem:(LPFilterMenuRepeatItem *)sender];
    }
    
    if ([self.delegate respondsToSelector:@selector(filterMenuView:didClickFilterMenuItem:)]) {
        
        [self.delegate filterMenuView:self didClickFilterMenuItem:sender];
        
    }
    
}

- (void)clickNormalItem:(LPFilterMenuNormalItem *)item {
    
    if (item.isSelected) return;
    
    self.selectedItem.selected = NO;
    self.selectedItem = item;
    item.selected = YES;
    
}

- (void)clickSpecialItem:(LPFilterMenuSpecialItem *)item {
    

    
}

- (void)clickRepeatItem:(LPFilterMenuRepeatItem *)item {
    
    if (item.isSelected) {
        
        item.type = item.type == LPFilterMenuRepeatItemTypeRepeatSelected ? LPFilterMenuRepeatItemTypeSelected : LPFilterMenuRepeatItemTypeRepeatSelected;
        
    } else {
        
        item.type = LPFilterMenuRepeatItemTypeSelected;
        
        self.selectedItem.selected = NO;
        self.selectedItem = item;
        item.selected = YES;
        
    }
    
}

#pragma mark - getter & setter

- (UIView *)separateView {
    if (!_separateView) {
        UIView *separateView = [[UIView alloc] init];
        _separateView = separateView;
        [self addSubview:separateView];
        separateView.hidden = YES;
    }
    return _separateView;
}

@end



















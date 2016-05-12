//
//  ViewController.m
//  LPFilterMenuView
//
//  Created by Allen on 16/5/12.
//  Copyright © 2016年 watermelon_lp. All rights reserved.
//

#import "ViewController.h"

#import "LPFilter.h"

@interface ViewController () <LPFilterMenuViewDelegate, UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet LPFilterMenuView *filterMenuView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
    LPFilterMenuNormalItem *item0 = [[LPFilterMenuNormalItem alloc] initWithTitle:@"推荐"];
    LPFilterMenuNormalItem *item1 = [[LPFilterMenuNormalItem alloc] initWithTitle:@"人气"];
    LPFilterMenuRepeatItem *item2 = [[LPFilterMenuRepeatItem alloc] initWithTitle:@"价格" image:[UIImage imageNamed:@"arrowMenuInactive"] selectedImage:[UIImage imageNamed:@"arrowMenuActive"] repeatSelectedImage:[UIImage imageNamed:@"arrowMenuActiveUp"]];
    LPFilterMenuSpecialItem *item3 = [[LPFilterMenuSpecialItem alloc] initWithTitle:@"筛选"];
    
    self.filterMenuView.lp_menuItems = @[item0, item1, item2, item3];
    self.filterMenuView.delegate = self;
    
}

#pragma mark - UITableViewDelegate & UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    return cell;
}

#pragma mark - LPFilterMenuViewDelegate

- (void)filterMenuView:(LPFilterMenuView *)filterMenuView didClickFilterMenuItem:(LPFilterMenuItem *)filterMenuItem {
    [filterMenuItem selectedState];
}

@end

//
//  GofListViewController.m
//  GofArchDemo
//
//  Created by LeeGof on 2017/4/22.
//  Copyright © 2017年 GofLee. All rights reserved.
//

#import "GofListViewController.h"
#import "GofMVCViewController.h"
#import "GofMVVMViewController.h"
#import "GofUserViewController.h"

@interface GofListViewController ()

@property (nonatomic, strong) NSArray *arrData;  //!<数据

@end

@implementation GofListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController *vc = nil;
    switch (indexPath.row) {
        case 0:
            vc = [[GofMVCViewController alloc] init];
            break;
            
        case 1:
            vc = [[GofMVVMViewController alloc] init];
            break;
        case 2:
            vc = [[GofUserViewController alloc] init];
            break;
    }
    if (vc) {
        [self.navigationController pushViewController:vc animated:YES];
    }
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.arrData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ListCell"];
    
    cell.textLabel.text = [self.arrData objectAtIndex:indexPath.row];
    
    return cell;
}

#pragma mark - Getter

- (NSArray *)arrData {
    if (nil == _arrData) {
        _arrData = @[@"MVC", @"MVVM", @"MVVMWithDataController"];
    }
    
    return _arrData;
}

@end

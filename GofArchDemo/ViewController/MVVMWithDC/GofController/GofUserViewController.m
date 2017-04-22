//
//  GofUserViewController.m
//  GofArchDemo
//
//  Created by LeeGof on 2017/4/21.
//  Copyright © 2017年 GofLee. All rights reserved.
//

#import "GofUserViewController.h"
#import "GofConstDefine.h"
#import "GofUserInfoView.h"
#import "Masonry.h"
#import "GofUserDataController.h"
#import "GofUserViewModel.h"

@interface GofUserViewController ()<GofUserInfoViewDelegate>

@property (nonatomic, strong) GofUserInfoView *userInfoView;  //!<视图
@property (nonatomic, strong) GofUserDataController *dataController;  //!<数据控制器

@end

@implementation GofUserViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    [self.view addSubview:self.userInfoView];
    
    [self p_updateViewConstraint];
    
    [self p_loadData];
}

#pragma mark - Private Method

- (void)p_updateViewConstraint {
    [self.userInfoView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.top.mas_equalTo(80);
        make.height.mas_equalTo(100);
    }];
}

- (void)p_loadData {
    kWeakObject(self)
    [self.dataController requestDataWithCallback:^(NSError *error) {
        if (nil == error) {
            [weakObject p_renderView];
        }
    }];
}

- (void)p_renderView {
    GofUserViewModel *vm = [GofUserViewModel gofUserViewModelWithUser:self.dataController.userModel];
    [self.userInfoView bindDataWithViewModel:vm];
}

#pragma mark - GofUserInfoViewDelegate

- (void)gofUserInfoViewButtonClick {
    NSLog(@"MVVMWithDC  点击了视图");
}

#pragma mark - Getter

- (GofUserInfoView *)userInfoView {
    if (nil == _userInfoView) {
        _userInfoView = [[GofUserInfoView alloc] init];
        _userInfoView.delegate = self;
    }
    return _userInfoView;
}

- (GofUserDataController *)dataController {
    if (nil == _dataController) {
        _dataController = [[GofUserDataController alloc] init];
    }
    return _dataController;
}

@end

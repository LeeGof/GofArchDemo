//
//  GofMVCViewController.m
//  GofArchDemo
//
//  Created by LeeGof on 2017/4/22.
//  Copyright © 2017年 GofLee. All rights reserved.
//

#import "GofMVCViewController.h"
#import "GofMVCModel.h"
#import "GofMVCView.h"
#import "Masonry.h"

@interface GofMVCViewController ()

@property (nonatomic, strong) GofMVCView *mvcView;  //!<视图
@property (nonatomic, strong) GofMVCModel *model;  //!<数据模型

@end

@implementation GofMVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    [self.view addSubview:self.mvcView];
    
    [self p_updateViewConstraint];
    
    [self p_loadData];
}

#pragma mark - Private Method

- (void)p_updateViewConstraint {
    [self.mvcView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.top.mas_equalTo(80);
        make.height.mas_equalTo(100);
    }];
}

- (void)p_loadData {
    //网络请求
    
    //数据加工和处理
    self.model.name = @"LeeGof";
    self.model.sex = GofSexMan;
    self.model.address = @"北京";
    
    //渲染页面
    [self p_renderView];
}

- (void)p_renderView {
    [self.mvcView setModel:self.model];
}

#pragma mark - Getter

- (GofMVCView *)mvcView {
    if (nil == _mvcView) {
        _mvcView = [[GofMVCView alloc] init];
        _mvcView.buttonClick = ^ {
            NSLog(@"MVC  点击了视图");
        };
    }
    return _mvcView;
}

- (GofMVCModel *)model {
    if (nil == _model) {
        _model = [[GofMVCModel alloc] init];
    }
    return _model;
}

@end

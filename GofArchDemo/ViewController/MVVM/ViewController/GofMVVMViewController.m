//
//  GofMVVMViewController.m
//  GofArchDemo
//
//  Created by LeeGof on 2017/4/22.
//  Copyright © 2017年 GofLee. All rights reserved.
//

#import "GofMVVMViewController.h"
#import "GofConstDefine.h"
#import "GofMVVMModel.h"
#import "Masonry.h"
#import "GofMVVMView.h"
#import "GofMVVMViewModel.h"

@interface GofMVVMViewController ()

@property (nonatomic, strong) GofMVVMView *mvvmView;  //!<视图
@property (nonatomic, strong) GofMVVMModel *mvvmModel;  //!<数据模型

@end

@implementation GofMVVMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    [self.view addSubview:self.mvvmView];
    
    [self p_updateViewConstraint];
    
    [self p_loadData];
}

#pragma mark - Private Method

- (void)p_updateViewConstraint {
    [self.mvvmView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.top.mas_equalTo(80);
        make.height.mas_equalTo(100);
    }];
}

- (void)p_loadData {
    //网络请求
    
    //数据加工和处理
    self.mvvmModel.name = @"LeeGof";
    self.mvvmModel.sex = GofSexMan;
    self.mvvmModel.address = @"北京";
    
    //渲染页面
    [self p_renderView];
}

- (void)p_renderView {
    GofMVVMViewModel *vm = [GofMVVMViewModel gofViewModelWithUser:self.mvvmModel];
    [self.mvvmView bindDataWithViewModel:vm];
}

#pragma mark - Getter

- (GofMVVMView *)mvvmView {
    if (nil == _mvvmView) {
        _mvvmView = [[GofMVVMView alloc] init];
        _mvvmView.buttonClick = ^ {
            NSLog(@"MVVM  点击了视图");
        };
    }
    return _mvvmView;
}

- (GofMVVMModel *)mvvmModel {
    if (nil == _mvvmModel) {
        _mvvmModel = [[GofMVVMModel alloc] init];
    }
    return _mvvmModel;
}

@end

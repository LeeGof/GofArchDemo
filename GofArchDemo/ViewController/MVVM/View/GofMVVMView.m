//
//  GofMVVMView.m
//  GofArchDemo
//
//  Created by LeeGof on 2017/4/22.
//  Copyright © 2017年 GofLee. All rights reserved.
//

#import "GofMVVMView.h"
#import "Masonry.h"
#import "GofMVVMModel.h"
#import "GofMVVMViewModel.h"

@interface GofMVVMView ()

@property (nonatomic, strong) UILabel *lblName;  //!<欢迎语
@property (nonatomic, strong) UILabel *lblInfo;  //!<地点
@property (nonatomic, strong) UIButton *btnTest;  //!<测试按钮

@end

@implementation GofMVVMView

- (instancetype)init {
    if (self = [super init]) {
        [self addSubview:self.lblName];
        [self addSubview:self.lblInfo];
        [self addSubview:self.btnTest];
        
        [self.lblName mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.mas_equalTo(5);
            make.right.mas_equalTo(-5);
            make.height.mas_equalTo(20);
        }];
        [self.lblInfo mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(5);
            make.right.mas_equalTo(-5);
            make.top.mas_equalTo(self.lblName.mas_bottom).offset(5);
            make.height.mas_equalTo(20);
        }];
        [self.btnTest mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(5);
            make.right.mas_equalTo(-5);
            make.top.mas_equalTo(self.lblInfo.mas_bottom).offset(5);
            make.height.mas_equalTo(40);
        }];
    }
    return self;
}

#pragma mark - Method

- (void)setModel:(GofMVVMModel *)model {
    if (GofSexMan == model.sex) {
        self.lblName.text = [NSString stringWithFormat:@"您好，%@先生", model.name];
        self.btnTest.hidden = NO;
    }
    else if (GofSexWoman == model.sex) {
        self.lblName.text = [NSString stringWithFormat:@"您好，%@女士", model.name];
        self.btnTest.hidden = NO;
    }
    else {
        self.lblName.text = [NSString stringWithFormat:@"您好，%@人妖", model.name];
        self.btnTest.hidden = YES;
    }
    self.lblInfo.text = [NSString stringWithFormat:@"欢迎来到%@", model.address];
}

- (void)btnClick {
    GofRunBlock(self.buttonClick);
}

- (void)bindDataWithViewModel:(GofMVVMViewModel *)viewModel {
    self.lblName.text = viewModel.userName;
    self.lblInfo.text = viewModel.info;
    
    self.btnTest.hidden = viewModel.hiddenButton;
}

#pragma mark - Getter

- (UILabel *)lblName {
    if (nil == _lblName) {
        _lblName = [[UILabel alloc] init];
        _lblName.backgroundColor = [UIColor clearColor];
        _lblName.textColor = k16RGBColor(0x646464);
        _lblName.font = kFontWithSize(16);
        _lblName.text = @"";
        _lblName.textAlignment = NSTextAlignmentLeft;
        _lblName.numberOfLines = 1;
    }
    return _lblName;
}

- (UILabel *)lblInfo {
    if (nil == _lblInfo) {
        _lblInfo = [[UILabel alloc] init];
        _lblInfo.backgroundColor = [UIColor clearColor];
        _lblInfo.textColor = k16RGBColor(0x646464);
        _lblInfo.font = kFontWithSize(16);
        _lblInfo.text = @"";
        _lblInfo.textAlignment = NSTextAlignmentLeft;
        _lblInfo.numberOfLines = 1;
    }
    return _lblInfo;
}

- (UIButton *)btnTest {
    if (nil == _btnTest) {
        _btnTest = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnTest.titleLabel.font = [UIFont systemFontOfSize:18.0];
        [_btnTest setTitle:@"试一试" forState:UIControlStateNormal];
        [_btnTest setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _btnTest.layer.masksToBounds = YES;
        _btnTest.clipsToBounds = YES;
        _btnTest.layer.cornerRadius = kCornerRadius;
        _btnTest.backgroundColor = kButtonBlueColor;
        [_btnTest addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btnTest;
}

@end

//
//  GofUserInfoView.h
//  用户信息视图
//
//  Created by LeeGof on 2017/4/20.
//  Copyright © 2017年 GofLee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GofUserViewModel.h"

@protocol GofUserInfoViewDelegate <NSObject>

- (void)gofUserInfoViewButtonClick;

@end

@interface GofUserInfoView : UIView

@property (nonatomic, weak) id delegate;  //!<视图代理

- (void)bindDataWithViewModel:(GofUserViewModel *)viewModel;

@end

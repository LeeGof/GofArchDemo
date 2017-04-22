//
//  GofMVVMViewModel.h
//  GofArchDemo
//
//  Created by LeeGof on 2017/4/22.
//  Copyright © 2017年 GofLee. All rights reserved.
//

#import <Foundation/Foundation.h>

@class GofMVVMModel;
@interface GofMVVMViewModel : NSObject

@property (nonatomic, copy) NSString *userName;  //!<姓名
@property (nonatomic, copy) NSString *info;  //!<描述
@property (nonatomic, assign) BOOL hiddenButton;  //!<是否隐藏按钮

+ (GofMVVMViewModel *)gofViewModelWithUser:(GofMVVMModel *)user;

@end

//
//  GofMVVMView.h
//  GofArchDemo
//
//  Created by LeeGof on 2017/4/22.
//  Copyright © 2017年 GofLee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GofConstDefine.h"

@class GofMVVMViewModel;
@interface GofMVVMView : UIView

@property (nonatomic, copy) GofVoidBlock buttonClick;  //!<回调Block

- (void)bindDataWithViewModel:(GofMVVMViewModel *)viewModel;

@end

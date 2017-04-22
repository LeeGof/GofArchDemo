//
//  GofMVCView.h
//  GofArchDemo
//
//  Created by LeeGof on 2017/4/22.
//  Copyright © 2017年 GofLee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GofConstDefine.h"

@class GofMVCModel;
@interface GofMVCView : UIView

@property (nonatomic, copy) GofVoidBlock buttonClick;  //!<回调Block

- (void)setModel:(GofMVCModel *)model;

@end

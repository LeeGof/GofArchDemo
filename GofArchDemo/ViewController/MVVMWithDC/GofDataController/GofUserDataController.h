//
//  GofUserDataController.h
//  GofArchDemo
//
//  Created by LeeGof on 2017/4/20.
//  Copyright © 2017年 GofLee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GofConstDefine.h"

@class GofUserModel;
@interface GofUserDataController : NSObject

@property (nonatomic, strong, nullable) GofUserModel *userModel;  //!<用户

- (void)requestDataWithCallback:(nonnull GofErrorBlock)callback;

@end

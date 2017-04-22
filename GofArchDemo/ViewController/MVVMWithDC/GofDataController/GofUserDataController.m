//
//  GofUserDataController.m
//  GofArchDemo
//
//  Created by LeeGof on 2017/4/20.
//  Copyright © 2017年 GofLee. All rights reserved.
//

#import "GofUserDataController.h"
#import "GofUserDataRequest.h"
#import "GofUserModel.h"

@implementation GofUserDataController

- (void)requestDataWithCallback:(nonnull GofErrorBlock)callback {
    GofUserDataRequest *request = [[GofUserDataRequest alloc] init];
    [request startWithCompletionBlockWithSuccess:^(id result, NSError *error) {
        self.userModel = [[GofUserModel alloc] init];
        self.userModel.name = @"LeeGof";
        self.userModel.sex = GofSexMan;
        self.userModel.address = @"北京";
        GofRunBlock(callback, error);
        NSLog(@"成功了");
    }];
}


@end

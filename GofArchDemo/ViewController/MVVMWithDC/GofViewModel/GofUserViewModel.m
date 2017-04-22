//
//  GofUserViewModel.m
//  GofArchDemo
//
//  Created by LeeGof on 2017/4/21.
//  Copyright © 2017年 GofLee. All rights reserved.
//

#import "GofUserViewModel.h"

@implementation GofUserViewModel

+ (GofUserViewModel *)gofUserViewModelWithUser:(GofUserModel *)user {
    GofUserViewModel *vm = [[GofUserViewModel alloc] init];
    if (GofSexMan == user.sex) {
        vm.userName = [NSString stringWithFormat:@"您好，%@先生", user.name];
        vm.hiddenButton = NO;
    }
    else if (GofSexWoman == user.sex) {
        vm.userName = [NSString stringWithFormat:@"您好，%@女士", user.name];
        vm.hiddenButton = NO;
    }
    else {
        vm.userName = [NSString stringWithFormat:@"您好，%@人妖", user.name];
        vm.hiddenButton = YES;
    }
    vm.info = [NSString stringWithFormat:@"欢迎来到%@", user.address];

    return vm;
}

@end

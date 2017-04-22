//
//  GofUserDataRequest.m
//  GofArchDemo
//
//  Created by LeeGof on 2017/4/22.
//  Copyright © 2017年 GofLee. All rights reserved.
//

#import "GofUserDataRequest.h"

@implementation GofUserDataRequest

- (void)startWithCompletionBlockWithSuccess:(GofIdErrorBlock)retBlock {
    //网络请求
    
    //数据回调
    GofRunBlock(retBlock, nil, nil);
}

@end

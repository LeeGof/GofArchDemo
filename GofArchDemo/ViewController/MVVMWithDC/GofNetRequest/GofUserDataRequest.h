//
//  GofUserDataRequest.h
//  GofArchDemo
//
//  Created by LeeGof on 2017/4/22.
//  Copyright © 2017年 GofLee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GofConstDefine.h"

@interface GofUserDataRequest : NSObject

- (void)startWithCompletionBlockWithSuccess:(GofIdErrorBlock)retBlock;

@end

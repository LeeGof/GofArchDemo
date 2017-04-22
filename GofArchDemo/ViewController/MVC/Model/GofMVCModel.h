//
//  GofMVCModel.h
//  GofArchDemo
//
//  Created by LeeGof on 2017/4/22.
//  Copyright © 2017年 GofLee. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_OPTIONS(NSUInteger, GofSex) {
    GofSexMan = 0,
    GofSexWoman = 1,
    GofSexUnknown = 2
};

@interface GofMVCModel : NSObject

@property (nonatomic, copy) NSString *name;  //!<姓名
@property (nonatomic, assign) GofSex sex;  //!<性别
@property (nonatomic, copy) NSString *address;  //!<地址

@end

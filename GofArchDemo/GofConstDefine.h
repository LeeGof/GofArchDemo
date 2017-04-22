//
//  GofConstDefine.h
//  常量定义
//
//  Created by LeeGof on 2017/4/22.
//  Copyright © 2017年 GofLee. All rights reserved.
//

#import <UIKit/UIKit.h>

#ifndef GofConstDefine_h
#define GofConstDefine_h

#define GofRunBlock(block, ...) if(block){block(__VA_ARGS__);}

//0xFFFFFF
#define k16RGBColor(rgbValue) \
[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16)) / 255.0 \
green:((float)((rgbValue & 0xFF00) >> 8)) / 255.0 \
blue:((float)(rgbValue & 0xFF)) / 255.0 alpha:1.0]

#define kButtonBlueColor k16RGBColor(0x41ACFF)

#define kFontWithSize(size) [UIFont systemFontOfSize:size]

#define kCornerRadius 3.0F

#define kWeakObject(object) __weak __typeof(object) weakObject = object;
#define kStrongObject(object) __strong __typedef(object) strongObject = object;

/**
 * 只带一个error参数的失败闭包类型，主要用于处理失败回调
 *
 * @param error 错误对象
 */
typedef void (^GofErrorBlock)(NSError *error);

/**
 * 常用的返回id类型的Block类型
 *
 * @param result 返回的结果，通常是接口返回数据源为一个id类型时使用
 * @param error 错误对象
 */
typedef void (^GofIdErrorBlock)(id result, NSError *error);

/**
 * 常用的单个按钮点击回调的Block类型
 *
 * @param sender 响应的按钮
 */
typedef void(^GofButtonBlock)(UIButton *sender);

/**
 * 通用的空闭包类型，无参数，无返回值
 */
typedef void (^GofVoidBlock)(void);

#endif /* GofConstDefine_h */

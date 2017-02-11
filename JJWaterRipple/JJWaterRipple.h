//
//  JJWaterRipple.h
//  JJripple
//
//  Created by JJ on 2017/2/10.
//  Copyright © 2017年 JJ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class JJWaterRipple;
@protocol JJWaterRippleDelegate <NSObject>

/** 返回贝塞尔曲线的路径 */
- (void)waterWave:(JJWaterRipple *)waterWave wavePath:(UIBezierPath *)path;

@end
@interface JJWaterRipple : NSObject
//初始化
- (instancetype)initWithFrame:(CGRect)frame;

//水深所占的比例，0-1;
@property(nonatomic,assign) CGFloat waterDepth;

/** 代理 */
@property(nonatomic,weak)id<JJWaterRippleDelegate> delegate;
@end

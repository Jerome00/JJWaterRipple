//
//  ViewController.m
//  JJWaterRipple
//
//  Created by JJ on 2017/2/11.
//  Copyright © 2017年 JJ. All rights reserved.
//

#import "ViewController.h"
#import "JJWaterRipple.h"

#define SCREEN_HEIGHT [[UIScreen mainScreen]bounds].size.height
#define SCREEN_WIDTH [[UIScreen mainScreen]bounds].size.width

@interface ViewController ()<JJWaterRippleDelegate>
/** 加载图片 */
@property(nonatomic,strong) UIImageView * imageV1;
@property(nonatomic,strong) UIImageView * imageV2;

@property(nonatomic,strong) JJWaterRipple * waterRipple;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageV1 = [[UIImageView alloc] init];
    self.imageV1.frame = CGRectMake((SCREEN_WIDTH - 150) / 2, (SCREEN_HEIGHT - 150) / 2, 150, 150);
    self.imageV1.image = [UIImage imageNamed:@"1"];
    [self.view addSubview:self.imageV1];
    
    self.imageV2 = [[UIImageView alloc] init];
    self.imageV2.frame = self.imageV1.frame;
    self.imageV2.image = [UIImage imageNamed:@"2"];
    [self.view addSubview:self.imageV2];
    
    CGRect frame = self.imageV1.frame;
    self.waterRipple = [[JJWaterRipple alloc]initWithFrame:frame];
    self.waterRipple.delegate = self;
    
    self.waterRipple.waterDepth = 0.5;
}

-(void)waterWave:(JJWaterRipple *)waterWave wavePath:(UIBezierPath *)path{
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.path = path.CGPath;
    self.imageV2.layer.mask = maskLayer;
}



@end

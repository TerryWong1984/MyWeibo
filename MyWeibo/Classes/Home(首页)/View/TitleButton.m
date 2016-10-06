//
//  TitleButton.m
//  MyWeibo
//
//  Created by TerryWong on 16/10/3.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "TitleButton.h"

@implementation TitleButton

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setTitle:@"首页" forState:UIControlStateNormal];
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        self.titleLabel.textAlignment = NSTextAlignmentRight ;
        [self setImage:[UIImage imageWithName:@"navigationbar_arrow_down"] forState:UIControlStateNormal];
        // 设置高亮背景
        [self setBackgroundImage:[UIImage resizeWithName:@"navigationbar_filter_background_highlighted"] forState:UIControlStateHighlighted];
        self.adjustsImageWhenHighlighted = NO ;
        self.imageView.contentMode = UIViewContentModeCenter ;
    }
    return self ;
}

-(CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGFloat imageX = self.width - self.height;
    CGFloat imageY = 0;
    CGFloat imageW = self.height ;
    CGFloat imageH = self.height ;
    return CGRectMake(imageX, imageY, imageW, imageH) ;
    
}

-(CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGFloat titleX = 0;
    CGFloat titleY = 0;
    CGFloat titleW = self.width - self.height;
    CGFloat titleH = self.height ;
    return CGRectMake(titleX, titleY, titleW, titleH) ;
}

@end

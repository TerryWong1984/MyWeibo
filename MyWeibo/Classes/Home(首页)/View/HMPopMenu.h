//
//  HMPopMenu.h
//  黑马微博
//
//  Created by apple on 14-7-4.
//  Copyright (c) 2014年 heima. All rights reserved.
//  弹出菜单

#import <UIKit/UIKit.h>

@class HMPopMenu;

@protocol HMPopMenuDelegate <NSObject>

@optional
- (void)popMenuDidDismissed:(HMPopMenu *)popMenu;
@end

@interface HMPopMenu : UIView
@property (nonatomic, weak) id<HMPopMenuDelegate> delegate;

/**
 *  初始化方法
 */
- (instancetype)initWithContentView:(UIView *)contentView;
+ (instancetype)popMenuWithContentView:(UIView *)contentView;

/**
 *  设置菜单的背景图片
 */
- (void)setBackground:(UIImage *)background;

/**
 *  显示菜单
 */
- (void)showInRect:(CGRect)rect;

/**
 *  关闭菜单
 */
- (void)dismiss;
@end

//
//  UIBarButtonItem+Extension.m
//  MyWeibo
//
//  Created by TerryWong on 16/7/20.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"

@implementation UIBarButtonItem (Extension)

+(UIBarButtonItem *)BarButtonItemWithNormalImage:(NSString *)imageName andHightedImage:(NSString *)hightImageName andAction:(SEL)action andTarget:(id)target
{
    UIButton *button = [[UIButton alloc]init];
    [button setImage:[UIImage imageWithName:imageName] forState:UIControlStateNormal];
    [button setImage:[UIImage imageWithName:hightImageName] forState:UIControlStateHighlighted];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    button.size = button.currentImage.size;
    UIBarButtonItem *barItem = [[UIBarButtonItem alloc]initWithCustomView:button];
    return barItem ;
    
}

@end

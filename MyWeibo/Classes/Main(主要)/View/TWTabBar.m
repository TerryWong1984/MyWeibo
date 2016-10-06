//
//  TWTabBar.m
//  MyWeibo
//
//  Created by TerryWong on 16/10/5.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "TWTabBar.h"

@implementation TWTabBar

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _button = [[UIButton alloc]init];
        [_button setBackgroundImage:[UIImage imageWithName:@"tabbar_compose_button"] forState:UIControlStateNormal];
        [_button setImage:[UIImage imageWithName:@"tabbar_compose_icon_add"] forState:UIControlStateNormal];
        [_button setBackgroundImage:[UIImage imageWithName:@"tabbar_compose_button_highlighted"] forState:UIControlStateHighlighted];
        [_button setImage:[UIImage imageWithName:@"tabbar_compose_icon_add_highlighted"] forState:UIControlStateHighlighted];
        [self addSubview:_button];
    }
    return self ;
}


-(void)layoutSubviews
{
    [super layoutSubviews];
    [self setupTabBarButton];
    [self setupPlusButton];
}

-(void)setupTabBarButton
{
    int index = 0 ;
    for (UIView *tabBarButton in self.subviews)
    {
        if (![tabBarButton isKindOfClass:NSClassFromString(@"UITabBarButton")]) continue ;
        CGFloat x = (self.width / 5.0) *index;
        CGFloat y = 0 ;
        CGFloat w = self.width / 5.0 ;
        CGFloat h = self.height ;
        
        if (index > 1)
        {
            x = w *(index + 1);
        }
        [tabBarButton setFrame:CGRectMake(x, y, w, h)];
        index++ ;
    }

}

-(void)setupPlusButton
{
    CGFloat w = self.width / 5.0 ;
    CGFloat h = self.height ;
    _button.width = w ;
    _button.height = h ;
    _button.x = w * 2;
    _button.y = 0 ;
    
}

@end

//
//  TWTabBar.m
//  MyWeibo
//
//  Created by TerryWong on 16/10/5.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "TWTabBar.h"

@implementation TWTabBar

-(void)layoutSubviews
{
    [super layoutSubviews];
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

@end

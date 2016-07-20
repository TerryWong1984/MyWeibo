//
//  UIBarButtonItem+Extension.h
//  MyWeibo
//
//  Created by TerryWong on 16/7/20.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)

+(UIBarButtonItem *)BarButtonItemWithNormalImage:(NSString *)imageName andHightedImage:(NSString *)hightImageName andAction:(SEL)action andTarget:(id)target ;

@end

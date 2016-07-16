//
//  UIImage+Extension.m
//  MyWeibo
//
//  Created by TerryWong on 16/7/17.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)

+(UIImage *)imageWithName:(NSString *)name
{
    UIImage *image = nil ;
    if (IOS7)
    {
        NSString *newName = [name stringByAppendingString:@"_os7"];
        image = [UIImage imageNamed:newName];
        if (image == nil) {
            return [UIImage imageNamed:name]   ;
        }
        return image;
    }
    return [UIImage imageNamed:name];
}

@end

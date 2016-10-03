//
//  TWSearchBar.m
//  MyWeibo
//
//  Created by TerryWong on 16/10/3.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "TWSearchBar.h"

@implementation TWSearchBar

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UIImage *image = [UIImage imageWithName:@"searchbar_textfield_background"];
        [self setBackground:[UIImage resizeWithName:@"searchbar_textfield_background"]];
        // 添加搜索框搜索图片
        UIImageView *leftView = [[UIImageView alloc]init] ;
        leftView.width = image.size.width + 10 ;
        leftView.height = image.size.height ;
        leftView.image = [UIImage imageWithName:@"searchbar_textfield_search_icon"];
        self.leftView = leftView;
        self.leftView.contentMode = UIViewContentModeCenter ;
        self.leftViewMode =  UITextFieldViewModeAlways ;
        
        self.clearButtonMode = UITextFieldViewModeAlways ;
    }
    return self;
}

-(instancetype)init
{
    self=[super init];
    
    if (self) {
        
        
    }
    
    return self;
}


+(instancetype)searchBar
{
    return  [[TWSearchBar alloc]init];
}
@end

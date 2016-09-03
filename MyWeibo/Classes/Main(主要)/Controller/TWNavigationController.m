//
//  TWNavigationController.m
//  MyWeibo
//
//  Created by TerryWong on 16/7/17.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "TWNavigationController.h"

@interface TWNavigationController ()

@end

@implementation TWNavigationController

+(void)initialize
{
    UIBarButtonItem *apperance = [UIBarButtonItem appearance];
    // 设置正常字体为黄色，高亮字体为红色，disable为灰色
    // 1) 正常
    NSMutableDictionary *textDic = [NSMutableDictionary dictionary];
    textDic[UITextAttributeTextColor] = [UIColor orangeColor];
    textDic[UITextAttributeFont] = [UIFont systemFontOfSize:15];
    [apperance setTitleTextAttributes:textDic forState:UIControlStateNormal];
    
    // 2) 高亮
    NSMutableDictionary *textDicHighted = [NSMutableDictionary dictionary];
    textDicHighted[UITextAttributeTextColor] = [UIColor redColor];
    textDicHighted[UITextAttributeFont] = [UIFont systemFontOfSize:15];
    [apperance setTitleTextAttributes:textDic forState:UIControlStateHighlighted];
    
    // 2) disable
    NSMutableDictionary *textDicDisabled = [NSMutableDictionary dictionary];
    textDicDisabled[UITextAttributeTextColor] = [UIColor grayColor];
    textDicDisabled[UITextAttributeFont] = [UIFont systemFontOfSize:15];
    [apperance setTitleTextAttributes:textDic forState:UIControlStateDisabled];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES ;
    }
    
       [super pushViewController:viewController animated:animated];
    
}

@end

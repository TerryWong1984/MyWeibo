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

   // 设置barItem主题
   [self setupBarItemSchma];
    
    // 设置navigation主题
    [self setupNavigationBarSchma];

    
}

+(void)setupBarItemSchma
{
    UIBarButtonItem *apperance = [UIBarButtonItem appearance];
    // 1) 正常
    NSMutableDictionary *textDic = [NSMutableDictionary dictionary];
    textDic[NSForegroundColorAttributeName] = [UIColor orangeColor];
    textDic[NSFontAttributeName] = [UIFont systemFontOfSize:15];
    [apperance setTitleTextAttributes:textDic forState:UIControlStateNormal];
    
    // 2) 高亮
    NSMutableDictionary *textDicHighted = [NSMutableDictionary dictionary];
    textDicHighted[NSForegroundColorAttributeName] = [UIColor redColor];
    textDicHighted[NSFontAttributeName] = [UIFont systemFontOfSize:15];
    [apperance setTitleTextAttributes:textDic forState:UIControlStateHighlighted];
    
    // 2) disable
    NSMutableDictionary *textDicDisabled = [NSMutableDictionary dictionary];
    textDicDisabled[NSForegroundColorAttributeName] = [UIColor grayColor];
    textDicDisabled[NSFontAttributeName] = [UIFont systemFontOfSize:15];
    [apperance setTitleTextAttributes:textDic forState:UIControlStateDisabled];
}

+(void)setupNavigationBarSchma
{
    UINavigationBar *apperance = [UINavigationBar appearance];
    if (!IOS7) {
    [apperance setBackgroundImage:[UIImage imageWithName:@"navigationbar_background_os7"] forBarMetrics:UIBarMetricsDefault];
    }

    NSMutableDictionary *textDic = [NSMutableDictionary dictionary];
    textDic[NSForegroundColorAttributeName] = [UIColor orangeColor];
    textDic[NSFontAttributeName] = [UIFont boldSystemFontOfSize:20];
    NSShadow *shadow = [[NSShadow alloc]init];
    shadow.shadowColor = [UIColor redColor];
    shadow.shadowOffset = CGSizeMake(0, 0);
    textDic[NSShadowAttributeName] = shadow ;
    [apperance setTitleTextAttributes:textDic];
    
    
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

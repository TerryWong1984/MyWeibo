//
//  TWTabbarViewController.m
//  MyWeibo
//
//  Created by TerryWong on 16/7/16.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "TWTabbarViewController.h"

@interface TWTabbarViewController ()

@end

@implementation TWTabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 创建四个子tabbar
    // 1. 首页
    UIViewController *home = [[UIViewController alloc]init];
    home.view.backgroundColor = TWRandomColor ;
    home.tabBarItem.title = @"首页";
    home.tabBarItem.image = [UIImage imageNamed:@"tabbar_home"];
    [self addChildViewController:home];
    
    UIViewController *message = [[UIViewController alloc]init];
    message.view.backgroundColor = TWRandomColor ;
    message.tabBarItem.title = @"消息";
    message.tabBarItem.image = [UIImage imageNamed:@"tabbar_message_center"];
    [self addChildViewController:message];
    
    UIViewController *discover = [[UIViewController alloc]init];
    discover.view.backgroundColor = TWRandomColor ;
    discover.tabBarItem.title = @"发现";
    discover.tabBarItem.image = [UIImage imageNamed:@"tabbar_discover"];
    [self addChildViewController:discover];
    
    UIViewController *me = [[UIViewController alloc]init];
    me.view.backgroundColor = TWRandomColor ;
    me.tabBarItem.title = @"我";
    me.tabBarItem.image = [UIImage imageNamed:@"tabbar_profile"];
    [self addChildViewController:me];
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

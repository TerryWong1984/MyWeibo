//
//  TWTabbarViewController.m
//  MyWeibo
//
//  Created by TerryWong on 16/7/16.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "TWTabbarViewController.h"
#import "DiscoverTableViewController.h"
#import "HomeTableViewController.h"
#import "MeTableViewController.h"
#import "MessageTableViewController.h"
#import "TWNavigationController.h"
#import "TWTabBar.h"

@interface TWTabbarViewController ()

@end

@implementation TWTabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 创建四个子tabbar
    // 1. 首页
    HomeTableViewController *home = [[HomeTableViewController alloc]init];
    [self addChildController:home withTitile:@"首页" andImage:[UIImage imageWithName:@"tabbar_home"] andSelectedImage:[UIImage imageWithName:@"tabbar_home_selected"]];
    
    MessageTableViewController *message = [[MessageTableViewController alloc]init];
    [self addChildController:message withTitile:@"消息" andImage:[UIImage imageWithName:@"tabbar_message_center"] andSelectedImage:[UIImage imageWithName:@"tabbar_message_center_selected"]];
    
    DiscoverTableViewController *discover = [[DiscoverTableViewController alloc]init];
    [self addChildController:discover withTitile:@"发现" andImage:[UIImage imageWithName:@"tabbar_discover"] andSelectedImage:[UIImage imageWithName:@"tabbar_discover_selected"]];
    
    MeTableViewController *me = [[MeTableViewController alloc]init];
    [self addChildController:me withTitile:@"我" andImage:[UIImage imageWithName:@"tabbar_profile"] andSelectedImage:[UIImage imageWithName:@"tabbar_profile_selected"]];
    
    TWTabBar *twTab = [[TWTabBar alloc]init];
    [self setValue:twTab forKey:@"tabBar"];
    
}


-(void)addChildController:(UIViewController *)controller withTitile:(NSString *)title andImage:(UIImage *)image andSelectedImage:(UIImage *)selectedImage
{
    // 添加导航控制器
    TWNavigationController *nav = [[TWNavigationController alloc]initWithRootViewController:controller];
    
//    controller.view.backgroundColor = TWRandomColor ;
    controller.title = title;
    controller.tabBarItem.image = image;
    
    NSMutableDictionary *textDic = [NSMutableDictionary dictionary];
    textDic[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [controller.tabBarItem setTitleTextAttributes:textDic forState:UIControlStateSelected];
    
    if(IOS7)
    {
     selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    controller.tabBarItem.selectedImage = selectedImage ;
    [self addChildViewController:nav];
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

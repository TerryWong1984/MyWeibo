//
//  HomeTableViewController.m
//  MyWeibo
//
//  Created by TerryWong on 16/7/17.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "HomeTableViewController.h"
#import "TitleButton.h"


@interface HomeTableViewController ()

@end

@implementation HomeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建BarItem
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem BarButtonItemWithNormalImage:@"navigationbar_friendsearch" andHightedImage:@"navigationbar_friendsearch_highlighted" andAction:@selector(searchFriend) andTarget:self];
    
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem BarButtonItemWithNormalImage:@"navigationbar_pop" andHightedImage:@"navigationbar_pop_highlighted" andAction:@selector(scan) andTarget:self];
    
    TitleButton *titleButton = [[TitleButton alloc] init];
    titleButton.width = 100 ;
    titleButton.height = 35 ;
    [titleButton addTarget:self action:@selector(shouMenu:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.titleView = titleButton;
}

-(void)shouMenu:(TitleButton *)titleButton
{
    // 换成箭头向上
    [titleButton setImage:[UIImage imageWithName:@"navigationbar_arrow_up"] forState:UIControlStateNormal];
    
    // 弹出菜单
    UIButton *button = [UIButton buttonWithType:UIButtonTypeContactAdd];
    button.backgroundColor = [UIColor redColor];
    
    HMPopMenu *menu = [[HMPopMenu alloc ] initWithContentView:button];
    menu.delegate = self;
    [menu showInRect:CGRectMake(100, 100, 100, 100)];
}

- (void)popMenuDidDismissed:(HMPopMenu *)popMenu
{
    TitleButton *titleButton = (TitleButton *)self.navigationItem.titleView;
    [titleButton setImage:[UIImage imageWithName:@"navigationbar_arrow_down"] forState:UIControlStateNormal];
}

-(void)searchFriend
{
    
}

-(void)scan
{
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"首页---------%d",indexPath.row];
    return cell ;
}


#pragma mark - TableViewDelegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIViewController *newVC = [[UIViewController alloc]init];
    newVC.view.backgroundColor = [UIColor redColor];
    [self.navigationController pushViewController:newVC animated:YES];
}

@end

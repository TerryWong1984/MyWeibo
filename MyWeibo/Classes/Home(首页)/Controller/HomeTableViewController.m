//
//  HomeTableViewController.m
//  MyWeibo
//
//  Created by TerryWong on 16/7/17.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "HomeTableViewController.h"

@interface HomeTableViewController ()

@end

@implementation HomeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建BarItem
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem BarButtonItemWithNormalImage:@"navigationbar_friendsearch" andHightedImage:@"navigationbar_friendsearch_highlighted" andAction:@selector(searchFriend) andTarget:self];
    
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem BarButtonItemWithNormalImage:@"navigationbar_pop" andHightedImage:@"navigationbar_pop_highlighted" andAction:@selector(scan) andTarget:self];

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

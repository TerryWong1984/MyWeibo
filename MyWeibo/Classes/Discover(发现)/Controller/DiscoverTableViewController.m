//
//  DiscoverTableViewController.m
//  MyWeibo
//
//  Created by TerryWong on 16/7/17.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "DiscoverTableViewController.h"

@interface DiscoverTableViewController ()

@end

@implementation DiscoverTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 搜索框
    UITextField *search = [[UITextField alloc] init];
    [search setBackground:[UIImage resizeWithName:@"searchbar_textfield_background"]];
    search.width = 300 ;
    search.height = 30 ;
    // 添加搜索框搜索图片
    UIImageView *leftView = [[UIImageView alloc]init] ;
    leftView.width = search.height ;
    leftView.height = search.height ;
    leftView.image = [UIImage imageWithName:@"searchbar_textfield_search_icon"];
    search.leftView = leftView;
    search.leftView.contentMode = UIViewContentModeCenter ;
    search.leftViewMode =  UITextFieldViewModeAlways ;
    
    search.clearButtonMode = UITextFieldViewModeAlways ;
    
    self.navigationItem.titleView = search ;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

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
    cell.textLabel.text = [NSString stringWithFormat:@"发现---------%d",indexPath.row];
    return cell ;
}

@end

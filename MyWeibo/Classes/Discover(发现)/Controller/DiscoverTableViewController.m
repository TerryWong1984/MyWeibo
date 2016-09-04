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
    
    search.backgroundColor = [UIColor redColor];
    search.width = 300 ;
    search.height = 30 ;
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

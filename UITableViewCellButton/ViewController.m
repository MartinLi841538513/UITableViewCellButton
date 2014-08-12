//
//  ViewController.m
//  UITableViewCellButton
//
//  Created by dongway on 14-8-12.
//  Copyright (c) 2014年 martin. All rights reserved.
//

#import "ViewController.h"

#define DeviceFrame [UIScreen mainScreen].bounds
#define StatusBarFrame [[UIApplication sharedApplication] statusBarFrame]
#define NavigationBarFrame self.navigationController.navigationBar.frame
#define TabBarFrame self.tabBarController.tabBar.frame

@interface ViewController ()
{
    __weak IBOutlet UITableView *tableview;
    NSString *identifier;
}
@end

@implementation ViewController

-(void)loadView{
    [super loadView];
    self.automaticallyAdjustsScrollViewInsets = NO;
    tableview.frame = CGRectMake(0, StatusBarFrame.size.height+NavigationBarFrame.size.height, DeviceFrame.size.width, DeviceFrame.size.height-StatusBarFrame.size.height-NavigationBarFrame.size.height-50);
    tableview.delegate = self;
    tableview.dataSource = self;
    identifier = @"WithButtonTableViewCell";
    UINib *nib = [UINib nibWithNibName:@"WithButtonTableViewCell" bundle:nil];
    [tableview registerNib:nib forCellReuseIdentifier:identifier];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma UITableViewDatasource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 15;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    int row = indexPath.row;
    WithButtonTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    cell.delegate = self;
    cell.button.tag = row;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44.0f;
}

#pragma WithButtonTableViewCellDelegate
-(void)buttonAction:(id)sender{
    UIButton *button = (UIButton *)sender;
    int row = button.tag;
    NSLog(@"button:%d",row);
}

@end

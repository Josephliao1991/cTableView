//
//  ViewController.m
//  cTableView
//
//  Created by 廖宗綸 on 2015/4/19.
//  Copyright (c) 2015年 Joseph Liao. All rights reserved.
//

#import "ViewController.h"

#import "cTableViewController.h"
#import "cTableViewCell.h"

@interface ViewController ()

@property UITableView *cTableView;
@property cTableViewController *cTableViewController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Create TableView
    self.cTableView = [[UITableView alloc]initWithFrame:
                                CGRectMake(0, 0,
                                           self.view.frame.size.width,
                                           self.view.frame.size.height)
                                style:UITableViewStylePlain];
    
    //Add TableView on View
    [self.view addSubview:self.cTableView];
    
    //Regist cTableCell ReuseIdentifier to cTableView
    [self.cTableView registerClass:cTableViewCell.self forCellReuseIdentifier:@"Cell"];
    
    //Set TableView Controller
    self.cTableViewController = [cTableViewController new];
    
    //Set cTableView Delegate
    self.cTableView.dataSource = self.cTableViewController;
    self.cTableView.delegate = self.cTableViewController;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

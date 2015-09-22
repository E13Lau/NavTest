//
//  ViewController.m
//  NavTest
//
//  Created by command.Zi on 15/9/21.
//  Copyright © 2015年 command.Zi. All rights reserved.
//

#import "ViewController.h"
#import "HeaderView.h"

@interface ViewController () <UITableViewDataSource,UITableViewDelegate> {
    
    IBOutlet UITableView *myTableView;
    HeaderView * myheaderView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    myTableView.delegate = self;
    myTableView.dataSource = self;
//
    myTableView.estimatedSectionHeaderHeight = 100.f;
    myTableView.rowHeight = UITableViewAutomaticDimension;

//    [myTableView.tableHeaderView addSubview:myheaderView];
    
//    UIView *header = myTableView.tableHeaderView;
//    
//    [header setNeedsLayout];
//    [header layoutIfNeeded];
//    
//    CGFloat height = [header systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
//    CGRect frame = header.frame;
//    
//    frame.size.height = height;
//    header.frame = frame;
//    
//    myTableView.tableHeaderView = header;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = @"AAA";
    return cell;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    myheaderView = [[HeaderView alloc]init];
    return myheaderView;
}

//-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
//    return UITableViewAutomaticDimension;
//}

@end

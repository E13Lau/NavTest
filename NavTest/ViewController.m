//
//  ViewController.m
//  NavTest
//
//  Created by command.Zi on 15/9/21.
//  Copyright © 2015年 command.Zi. All rights reserved.
//

#import "ViewController.h"
#import "HeaderView.h"

@interface ViewController () <UITableViewDataSource,UITableViewDelegate,UISearchControllerDelegate> {
    
    IBOutlet UITableView *myTableView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"viewDidLoad");
    myTableView.delegate = self;
    myTableView.dataSource = self;
    
    
    HeaderView * headerView = [[HeaderView alloc]init];
    myTableView.tableHeaderView = headerView;
//
    myTableView.estimatedRowHeight = 100.f;
    myTableView.rowHeight = UITableViewAutomaticDimension;
    
    myTableView.estimatedSectionHeaderHeight = 100.f;
    myTableView.sectionHeaderHeight = UITableViewAutomaticDimension;
    
//    myheaderView = [[HeaderView alloc]init];
    
//    [myheaderView setNeedsLayout];
//    [myheaderView layoutIfNeeded];
//    myTableView.tableHeaderView = myheaderView;
//    myheaderView.backgroundColor = [UIColor redColor];
//    [myTableView layoutIfNeeded];
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

-(void)viewWillAppear:(BOOL)animated {
    NSLog(@"viewWillAppear");
}

-(void)viewDidAppear:(BOOL)animated {
    NSLog(@"viewDidAppear");
}

-(void)viewWillDisappear:(BOOL)animated {
    NSLog(@"viewWillDisappear");
}

-(void)viewDidDisappear:(BOOL)animated {
    NSLog(@"viewDidDisappear");
}

-(void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    [self sizeHeaderToFit];
    NSLog(@"viewDidLayoutSubviews");
}

-(void)sizeHeaderToFit {
    NSLog(@"sizeHeaderToFit");
    UIView * headerView = myTableView.tableHeaderView;
    
    [headerView setNeedsLayout];
    [headerView layoutIfNeeded];
    
    CGFloat height = [headerView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
    CGRect frame = headerView.frame;
    frame.size.height = height;
    headerView.frame = frame;
    myTableView.tableHeaderView = headerView;
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

-(void)willDismissSearchController:(UISearchController *)searchController {
    NSLog(@"willDismiss");
}

//-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
//    return UITableViewAutomaticDimension;
//}

- (IBAction)barButtonAction:(id)sender {
    UISearchController * controller = [[UISearchController alloc]initWithSearchResultsController:[[UITableViewController alloc]init]];
    controller.delegate = self;
    [self presentViewController:controller animated:YES completion:nil];
}

@end

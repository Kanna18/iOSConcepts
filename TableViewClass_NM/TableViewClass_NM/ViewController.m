//
//  ViewController.m
//  TableViewClass_NM
//
//  Created by Dineshkumar kothuri on 07/03/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

#import "ViewController.h"
#import "MyTableViewCell.h"
@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    self.contactsTV = [[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
//    self.contactsTV.backgroundColor = [UIColor blueColor];
//    self.contactsTV.delegate = self;
//    self.contactsTV.dataSource = self;
//    [self.view addSubview:self.contactsTV];
    _myTableView.delegate = self;
    _myTableView.dataSource = self;
//    [_myTableView registerClass:[MyTableViewCell class] forCellReuseIdentifier:@"myTVCell"];
}


#pragma TableView DataSourceMethods


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 5;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *reuse = @"myTVCell";
    MyTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:reuse forIndexPath:indexPath];

    
    cell.backgroundColor = [UIColor redColor];
    cell.myTitleLabel.text = @"Hi";
    return cell;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"Height For cell index %ld",indexPath.row);
    return 150;
}


@end

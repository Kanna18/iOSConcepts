//
//  ViewController.m
//  TableViewClass
//
//  Created by Dineshkumar kothuri on 23/01/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property UITableView *myContacts;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.myContacts = [[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    self.myContacts.backgroundColor = [UIColor orangeColor];
    self.myContacts.delegate = self;
    self.myContacts.dataSource = self;

    [self.view addSubview:self.myContacts];
    
    
    NSLog(@"HIksdhkj");
}





- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    printf(__FUNCTION__);
    NSLog(@"%ld",indexPath.row);
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myContactCell"];

    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"myContactCell"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"Shankar %ld",(long)indexPath.row];
    return cell;


}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
       
    printf(__FUNCTION__);
    return 500;
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    printf(__FUNCTION__);
    return 1;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return  500;
}






@end

//
//  ViewController.m
//  MultipleViews
//
//  Created by Dineshkumar kothuri on 17/03/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerOne.h"
#import "ViewControllerTwo.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *namesTV;

@end


static NSString *reuse = @"nameCell";

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _namesTV.delegate=self;
    _namesTV.dataSource=self;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuse];
    if(cell == nil){
        
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuse];
        
    }
    cell.accessoryType = UITableViewCellAccessoryCheckmark;

    
    return cell;
    
}
- (IBAction)btnOneClick:(id)sender {
    
    ViewControllerOne *vcOne = [self.storyboard instantiateViewControllerWithIdentifier:@"vcOne"];
    [self setModalPresentationStyle:UI]
    [self presentViewController:vcOne animated:YES completion:nil];
    
    
    
}

- (IBAction)buttonTwoClick:(id)sender {
    NSLog(@"BttonTwo Clicked");
    
    ViewControllerTwo *vcTwo = [self.storyboard instantiateViewControllerWithIdentifier:@"vcTwo"];
    [self presentViewController:vcTwo animated:YES completion:nil];
}

@end

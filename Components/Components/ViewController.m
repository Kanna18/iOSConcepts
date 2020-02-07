//
//  ViewController.m
//  Components
//
//  Created by Dineshkumar kothuri on 07/02/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property UILabel *nameNabel;
@property UIButton *submitBtn;
@property (weak, nonatomic) IBOutlet UIButton *btnDragged;
- (IBAction)printAllComponents:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    

    
    self.submitBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    self.submitBtn.frame = CGRectMake(30, 100, 200, 300);
    self.submitBtn.backgroundColor = [UIColor redColor];
    [self.submitBtn addTarget:self action:@selector(buttonClikFunction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.submitBtn setTitle:@"Submit Normal" forState:UIControlStateNormal];
    [self.submitBtn setTitle:@"Submit Hilighted" forState:UIControlStateHighlighted];
    [self.submitBtn setTitle:@"Submit Disabled" forState:UIControlStateDisabled];
    [self.submitBtn setTitle:@"Submit Selected" forState:UIControlStateSelected];
    

    [self.submitBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:self.submitBtn];


    
    self.nameNabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 40, 200, 30)];
    self.nameNabel.backgroundColor = [UIColor greenColor];
    self.nameNabel.text = @"iOS Button";
    [self.view addSubview:self.nameNabel];
    
    
    
}

- (IBAction)clickmefuction:(id)sender {
    
}

-(void)buttonClikFunction:(UIButton*)sender{
//    NSLog(@"Button Clicked");
//    self.nameNabel.backgroundColor = [UIColor grayColor];
//    NSLog(@"%@",self.nameNabel.text);
//
//    self.submitBtn.enabled = FALSE;
    NSLog(@"%@",sender.titleLabel.text);
    
}
- (IBAction)printAllComponents:(id)sender {
    
}
@end

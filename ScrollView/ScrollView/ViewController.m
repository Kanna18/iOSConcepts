//
//  ViewController.m
//  ScrollView
//
//  Created by Dineshkumar kothuri on 27/02/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property UISwitch *bgSwitch;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    CGRect rec = [UIScreen mainScreen].bounds;
//    UIScrollView *scrlVw = [[UIScrollView alloc]initWithFrame:CGRectMake(30, 30, 300, 1000)];
//    scrlVw.backgroundColor = [UIColor blueColor];
//    scrlVw.contentSize = CGSizeMake(rec.size.width, 8*rec.size.height);
//    [self.view addSubview:scrlVw];
//    
//    
//    
//    CGFloat xAx = 15;
//    CGFloat yAx = 30;
//    CGFloat width = 70;
//    CGFloat height = 70;
//    
//    
//    
//    for (int i = 1; i<400; i++) {
//        UILabel *lbl = [[UILabel alloc]initWithFrame:CGRectMake(xAx, yAx, width, height)];
//        lbl.text = [NSString stringWithFormat:@"%d",i];
//        lbl.textAlignment = NSTextAlignmentCenter;
//        lbl.backgroundColor = [UIColor grayColor];
//        lbl.textColor = [UIColor cyanColor];
//        [scrlVw addSubview:lbl];
//        
//        xAx = xAx + width + 10;
//        if(i % 5 == 0){
//            xAx = 15;
//            yAx = yAx + height + 10;
//        }
//    }
//    
    
    self.bgSwitch = [[UISwitch alloc]initWithFrame:CGRectMake(50, 100, 50, 50)];
    
    [self.view addSubview:self.bgSwitch];

    
    
}


@end

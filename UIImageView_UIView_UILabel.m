//
//  ViewController.m
//  Components
//
//  Created by Dineshkumar kothuri on 04/01/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    self.swtch = [[UISwitch alloc]initWithFrame:CGRectMake(100, 200, 500, 6000)];
////    self.swtch.onTintColor = [UIColor blueColor];
//
//    [self.swtch setOnImage:[UIImage imageNamed:@"swt"]];
//    [self.swtch setOn:true animated:true];
//
//    [self.swtch addTarget:self action:@selector(mySwitchFunction) forControlEvents:UIControlEventValueChanged];
//    [self.view addSubview:self.swtch];
//
//
//    NSDictionary *rooms = [[NSDictionary alloc]initWithObjects:@[h1,@"DiningRoom",@"Bedroom",@"Kitchen"] forKeys:@[@"1",@"2",@"3",@"4"]];
//
//
//
//    NSLog(@"%@",[rooms valueForKey:@"5"]);
    self.view.backgroundColor = [UIColor cyanColor];
    
//
//
    UIView  *bgView = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 60, 100)];
    bgView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:bgView];
    
    UILabel *lbl = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, 30, 30)];
    lbl.backgroundColor = [UIColor redColor];
    lbl.textColor = [UIColor whiteColor];
    lbl.text = [NSString stringWithFormat:@"%d",1];
    [bgView addSubview:lbl];
    
    UILabel *lbl2 = [[UILabel alloc]initWithFrame:CGRectMake(10, 55, 30, 30)];
    lbl2.backgroundColor = [UIColor redColor];
    lbl2.textColor = [UIColor whiteColor];
    lbl2.text = [NSString stringWithFormat:@"%d",1];
    [bgView addSubview:lbl2];
    
    UIImage *bgImage = [UIImage imageNamed:@"apple.png"];
    
    UIImageView *img  = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, bgView.frame.size.width, bgView.frame.size.height - 20)];
    img.image = bgImage;
    [bgView addSubview:img];
    
    
//
//    CGFloat myX = 10;
//           CGFloat myY = 50;
//
//
//           for (int i=1; i<101; i++) {
//               UILabel *lbl = [[UILabel alloc]initWithFrame:CGRectMake(myX, myY, 30, 30)];
//               lbl.backgroundColor = [UIColor redColor];
//               lbl.textColor = [UIColor whiteColor];
//               lbl.text = [NSString stringWithFormat:@"%d",i];
//               [bgView addSubview:lbl];
//               myX = myX +  30 + 20;
//               if(i % 8 == 0){
//                   myY = myY + 30 + 20;
//                   myX = 10;
//               }
//           }
    
}




@end

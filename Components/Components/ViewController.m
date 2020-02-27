//
//  ViewController.m
//  Components
//
//  Created by Dineshkumar kothuri on 07/02/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *animateImageView;
@property (weak, nonatomic) IBOutlet UIImageView *animateIUmageView2;
@property (weak, nonatomic) IBOutlet UISlider *speedSlider;
@property BOOL firstImage;
@property BOOL secondImage;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    NSMutableArray *imagesArr = [[NSMutableArray alloc]init];
    for (int i = 1; i<6; i++) {
        NSString *str = [NSString stringWithFormat:@"img%d.png",i];
        if(i != 2){
        UIImage *image = [UIImage imageNamed:str];
        [imagesArr addObject:image];
        }
    }

    self.animateImageView.animationImages = imagesArr;
    
    self.animateIUmageView2.animationImages = imagesArr;
    
    self.animateIUmageView2.animationDuration = 1;
    self.animateImageView.animationDuration = 1;

}
- (IBAction)animateClick:(id)sender {
    UIButton *btn = (UIButton*)sender;
    if(btn.isSelected){
        [btn setTitle:@"Start" forState:UIControlStateNormal];
        [self.animateImageView stopAnimating];
        btn.selected = NO;
        self.firstImage = NO;
    }else{
        [btn setTitle:@"Stop" forState:UIControlStateNormal];
        [self.animateImageView startAnimating];
        btn.selected = YES;
        self.firstImage = YES;
    }
    
}
- (IBAction)animate2CLick:(id)sender {
    UIButton *btn = (UIButton*)sender;
    if(btn.isSelected){
        [btn setTitle:@"Start" forState:UIControlStateNormal];
        [self.animateIUmageView2 stopAnimating];
        btn.selected = NO;
        self.secondImage = NO;
    }else{
        [btn setTitle:@"Stop" forState:UIControlStateNormal];
        [self.animateIUmageView2 startAnimating];
        btn.selected = YES;
        self.secondImage = YES;
    }
}
- (IBAction)varySpeed:(id)sender {
    
    UISlider *btn = (UISlider*)sender;
    self.animateIUmageView2.animationDuration = btn.value;
    self.animateImageView.animationDuration = btn.value;
    if(self.secondImage){
        [self.animateIUmageView2 stopAnimating];
        [self.animateIUmageView2 startAnimating];
       
    }
    
    
    
    if(self.firstImage){
       [self.animateImageView stopAnimating];
        [self.animateImageView startAnimating];
    }
    

    
}

@end

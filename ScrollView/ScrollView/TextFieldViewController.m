//
//  TextFieldViewController.m
//  ScrollView
//
//  Created by Dineshkumar kothuri on 28/02/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

#import "TextFieldViewController.h"

@interface TextFieldViewController ()

@property UITextField  *userNameTF;
@property UITextField  *pwdTF;
@property UITextView *addrTV;
@property UISwitch *bgSwitch;
@property UILabel *valueLbl;

@property (weak, nonatomic) IBOutlet UISwitch *mySwitch;

@property UISlider *valueSlider;

@property UIStepper *valueSStepper;

- (IBAction)chnageBG:(id)sender;

@end

@implementation TextFieldViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    // Do any additional setup after loading the view.
//    
//    self.userNameTF = [[UITextField alloc]initWithFrame:CGRectMake(50, 50, 300, 40)];
//    self.userNameTF.backgroundColor = [UIColor grayColor];
//    self.userNameTF.textColor = [UIColor blackColor];
//    self.userNameTF.text = @"Enter UserName";
//    self.userNameTF.textAlignment = NSTextAlignmentCenter;
//    self.userNameTF.delegate = self;
//    [self.view addSubview:self.userNameTF];
//    
//    
//    self.pwdTF = [[UITextField alloc]initWithFrame:CGRectMake(50, 100, 300, 40)];
//    self.pwdTF.backgroundColor = [UIColor grayColor];
//    self.pwdTF.textColor = [UIColor blackColor];
//    self.pwdTF.delegate = self;
//    self.pwdTF.text = @"Enter Password";
//    self.pwdTF.textAlignment = NSTextAlignmentCenter;
//    self.pwdTF.keyboardType = UIKeyboardTypeNumberPad;
//    [self.view addSubview:self.pwdTF];
//    
//    /*self.addrTV = [[UITextView alloc]initWithFrame:CGRectMake(50, 150, 300, 500)];
//    self.addrTV.backgroundColor = [UIColor grayColor];
//    self.addrTV.delegate = self;
//    [self.view addSubview:self.addrTV];*/
    
    
    self.bgSwitch = [[UISwitch alloc]initWithFrame:CGRectMake(50, 100, 1000, 10050)];
    [self.bgSwitch addTarget:self action:@selector(changeBgColor) forControlEvents:UIControlEventValueChanged];
    self.bgSwitch.onTintColor = [UIColor redColor];
    self.bgSwitch.thumbTintColor = [UIColor blueColor];
    [self.view addSubview:self.bgSwitch];
    
    self.valueLbl = [[UILabel alloc]initWithFrame:CGRectMake(150, 250, 40, 40)];
    self.valueLbl.backgroundColor = [UIColor whiteColor];
    self.valueLbl.text = @"0";
    [self.view addSubview:self.valueLbl];
    
    self.valueSlider = [[UISlider alloc]initWithFrame:CGRectMake(30, 300, 300, 30)];
    self.valueSlider.backgroundColor = [UIColor grayColor];
    self.valueSlider.minimumValue = 0;
    self.valueSlider.maximumValue = 100;
    [self.valueSlider addTarget:self action:@selector(mySliderValueChanged) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.valueSlider];
    
    
    
    self.valueSStepper = [[UIStepper alloc]initWithFrame:CGRectMake(30, 350, 300, 30)];
    self.valueSStepper.backgroundColor = [UIColor yellowColor];
    self.valueSStepper.minimumValue = 0;
    self.valueSStepper.maximumValue = 100;
    [self.valueSStepper addTarget:self action:@selector(mySliderValueChanged) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.valueSStepper];
    
    
}
-(void)mySliderValueChanged{
    
    self.valueLbl.text = [NSString stringWithFormat:@"%0.0f",self.valueSStepper.value];
}
-(void)changeBgColor{
    if(self.bgSwitch.isOn){
        self.view.backgroundColor = [UIColor cyanColor];
    }else{
        self.view.backgroundColor = [UIColor grayColor];
    }
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    
    textField.text = @"";
    
    return YES;
}
-(void)textFieldDidBeginEditing:(UITextField *)textField{
    
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    if([string isEqualToString:@"e"]){
        return NO;
    }else{
        return YES;
    }
   
    return NO;
}

-(BOOL)textFieldShouldEndEditing:(UITextField *)textField{
   
    if(textField.text.length >= 4){
        return YES;
    }
    
    return YES;
}

-(void)textFieldDidEndEditing:(UITextField *)textField{
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)chnageBG:(id)sender {
    self.view.backgroundColor = [UIColor yellowColor];
}
@end

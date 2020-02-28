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

@end

@implementation TextFieldViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.userNameTF = [[UITextField alloc]initWithFrame:CGRectMake(50, 50, 300, 40)];
    self.userNameTF.backgroundColor = [UIColor grayColor];
    self.userNameTF.textColor = [UIColor blackColor];
    self.userNameTF.text = @"Enter UserName";
    self.userNameTF.textAlignment = NSTextAlignmentCenter;
    self.userNameTF.delegate = self;
    [self.view addSubview:self.userNameTF];
    
    
    self.pwdTF = [[UITextField alloc]initWithFrame:CGRectMake(50, 100, 300, 40)];
    self.pwdTF.backgroundColor = [UIColor grayColor];
    self.pwdTF.textColor = [UIColor blackColor];
    self.pwdTF.delegate = self;
    self.pwdTF.text = @"Enter Password";
    self.pwdTF.textAlignment = NSTextAlignmentCenter;
    self.pwdTF.keyboardType = UIKeyboardTypeNumberPad;
    [self.view addSubview:self.pwdTF];
    
    /*self.addrTV = [[UITextView alloc]initWithFrame:CGRectMake(50, 150, 300, 500)];
    self.addrTV.backgroundColor = [UIColor grayColor];
    self.addrTV.delegate = self;
    [self.view addSubview:self.addrTV];*/
    
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

@end

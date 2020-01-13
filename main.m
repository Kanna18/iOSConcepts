//
//  main.m
//  ClassProject
//
//  Created by Dineshkumar kothuri on 13/01/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Maths.h"

int main(int argc, char * argv[]) {
   
    
    Maths *ma = [[Maths alloc]init];
    
    [ma additionOfTwoNumbers];
    
    [ma addtionWIthParameters:100 :200];
    
    int myNuber = [ma addtionWIthParametersReturn:400 :500];
    
    
    NSLog(@"%d prop1 --%d  prop2 --%d",myNuber,ma.numb1,ma.numbr2);
    
    return nil;
}

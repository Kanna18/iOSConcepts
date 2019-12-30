//
//  Multiplications.m
//  OopsClass
//
//  Created by Dineshkumar kothuri on 30/12/19.
//  Copyright © 2019 Dineshkumar kothuri. All rights reserved.
//

#import "Multiplications.h"

@implementation Multiplications

-(void)multiplicationOfTwoNumbers{
    int mul = self.numb1 * self.numb2;
    NSLog(@"Multiplication of two numbers are %d",mul);
}

-(void)multiplicationOfThreeNumbers{
    int mul = self.numb1 * self.numb2 * self.numb3;
    NSLog(@"Multiplication of two numbers are %d",mul);
}

-(void)multiplicationWithParametersnumbwer1:(int)n1 number2:(int)n2{
    
    
    int mult = n1 *  n2;
    NSLog(@"Multiplication with parameters %d",mult);
}


@end

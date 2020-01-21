//
//  Maths.m
//  ClassProject
//
//  Created by Dineshkumar kothuri on 13/01/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

#import "Maths.h"

@implementation Maths

-(instancetype)init{
    self = [super init];
    if(self){
        NSLog(@"Space is allocating");
    }
    return self;
}


-(void)additionOfTwoNumbers{
    int a = 10;
    int b = 20;
    int c = a + b;
    NSLog(@"addition is %d",c);
    
}


-(void)addtionWIthParameters:(int)a :(int)b{
    int c = a + b;
    NSLog(@"Parameters %d",c);
}

-(int)addtionWIthParametersReturn:(int)a :(int)b{
    self.numb1 = b;
    self.numbr2 = a;
    int c = a + b;
    return c;
}


@end

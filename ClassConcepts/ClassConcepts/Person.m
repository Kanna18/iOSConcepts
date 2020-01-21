//
//  Person.m
//  ClassConcepts
//
//  Created by Dineshkumar kothuri on 21/01/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//


//ImplementationFile

#import "Person.h"

@implementation Person

-(instancetype)init{
    self = [super init];
    if(self){
        
        self.fullName = [NSString stringWithFormat:@"%@ %@",self.firstName,self.lastName];
    }
    return self;
}


-(instancetype)initWithfirstName:(NSString *)fName lastName:(NSString *)lName{
    self = [super init];
    if(self){
        self.firstName = fName;
        self.lastName = lName;
        self.fullName = [NSString stringWithFormat:@"%@ %@",fName,lName];
    }
    return self;
}


-(void)concatenateFullName{
    
}


@end

//
//  main.m
//  ClassConcepts
//
//  Created by Dineshkumar kothuri on 21/01/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Person.h"



int main(int argc, char * argv[]) {
    
    Person *p1 = [[Person alloc]init];
    p1.firstName = @"Nowshad";
    p1.lastName = @"Akhun";
    [p1 concatenateFullName];
    NSLog(@"%@",p1.fullName);
    
    
    Person *p2 = [[Person alloc]init];
    p2.firstName = @"Satynarayana";
    p2.lastName = @"Murthy";
    NSLog(@"%@",p2.fullName);
    
    
    Person *p3 = [[Person alloc]initWithfirstName:@"Dinesh" lastName:@"Kothuri"];
    NSLog(@"%@",p3.firstName);
    
    return nil;
    
}

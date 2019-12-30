//
//  Multiplications.h
//  OopsClass
//
//  Created by Dineshkumar kothuri on 30/12/19.
//  Copyright © 2019 Dineshkumar kothuri. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Multiplications : NSObject

@property int numb1;
@property int numb2;
@property int numb3;

-(void)multiplicationOfTwoNumbers;

-(void)multiplicationOfThreeNumbers;

-(void)multiplicationWithParametersnumbwer1:(int)n1 number2:(int)n2;

-(void)multiplicationWithParametersnumbwer1:(int)n1 number2:(int)n2 numeber3:(int)n2;

@end

NS_ASSUME_NONNULL_END

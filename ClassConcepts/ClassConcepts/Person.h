//
//  Person.h
//  ClassConcepts
//
//  Created by Dineshkumar kothuri on 21/01/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

//DeclarationFile

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

//@property int a;
@property NSString *firstName;
@property NSString *lastName;
@property NSString *fullName;
-(void)concatenateFullName;

-(instancetype)initWithfirstName:(NSString*)fName lastName:(NSString*)lName;
                        


@end

NS_ASSUME_NONNULL_END

//
//  ViewController.h
//  TableViewClass_NM
//
//  Created by Dineshkumar kothuri on 07/03/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@end


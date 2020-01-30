//
//  ViewController.h
//  MyFirstProject
//
//  Created by Dineshkumar kothuri on 30/01/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property UICollectionView *myCV;
@property (weak, nonatomic) IBOutlet UICollectionView *moviesCV;

@end


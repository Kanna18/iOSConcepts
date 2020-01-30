//
//  ViewController.m
//  MyFirstProject
//
//  Created by Dineshkumar kothuri on 30/01/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

#import "ViewController.h"
#import "MovieCell.h"

@interface ViewController ()

@end
static NSString *reuse = @"movieCell";

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
//    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
//    layout.minimumLineSpacing = 100.0;
//    self.myCV = [[UICollectionView alloc]initWithFrame:[UIScreen mainScreen].bounds collectionViewLayout:layout];
//    self.myCV.dataSource = self;
//    self.myCV.delegate = self;
//    self.myCV.backgroundColor = [UIColor redColor];
//    [self.myCV registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuse];
//    [self.view addSubview:self.myCV];
    
    self.moviesCV.delegate = self;
    self.moviesCV.dataSource = self;
    

    
    
    
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 10;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
        
    MovieCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuse forIndexPath:indexPath];
    if(cell == nil){
        cell = [[MovieCell alloc]init];
    }
    cell.backgroundColor = [UIColor greenColor];
    cell.titleLabel.text = [NSString stringWithFormat:@"iOS %lu",indexPath.row];
    cell.titleLabel.backgroundColor = [UIColor cyanColor];
    
    return cell;
    
    
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(100, 100);
}
@end

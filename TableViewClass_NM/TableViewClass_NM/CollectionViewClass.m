//
//  CollectionViewClass.m
//  TableViewClass_NM
//
//  Created by Dineshkumar kothuri on 14/03/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

#import "CollectionViewClass.h"

@interface CollectionViewClass ()

@property (weak, nonatomic) IBOutlet UICollectionView *mydraggedCV;


@end

@implementation CollectionViewClass

static NSString *reuse = @"cvCell";
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.mydraggedCV.delegate = self;
    self.mydraggedCV.dataSource = self;
    [self.mydraggedCV registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuse];
    
    
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return 10;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuse forIndexPath: indexPath];

    cell.backgroundColor = [UIColor grayColor];
    return cell;
    
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(100, 100);
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

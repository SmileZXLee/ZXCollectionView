//
//  ZXTestSingleCVVC.m
//  ZXCollectionViewDemo
//
//  Created by 李兆祥 on 2019/4/8.
//  Copyright © 2019 李兆祥. All rights reserved.
//

#import "ZXTestSingleCVVC.h"
#import "ZXCollectionView.h"
#import "ZXTestSingleCVCell.h"
#import "ZXTestSingleCVModel.h"
@interface ZXTestSingleCVVC ()
@property (weak, nonatomic) IBOutlet ZXCollectionView *collectionView;

@end

@implementation ZXTestSingleCVVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setCollectionView];
}

-(void)setCollectionView{
    self.collectionView.backgroundColor = [UIColor colorWithRed:240 / 255.0 green:240 / 255.0 blue:240 / 255.0 alpha:1];
    self.collectionView.zx_setCellClassAtIndexPath = ^Class _Nonnull(NSIndexPath * _Nullable indexPath) {
        return [ZXTestSingleCVCell class];
    };
    ZXCVFastModel *fastModel = [[ZXCVFastModel alloc]init];
    fastModel.colCount = 3;
    fastModel.itemHConstant = 30;
    [self.collectionView zx_fastWithModel:fastModel];
    self.collectionView.zxDatas = [self getData];
}

-(NSMutableArray *)getData{
    NSMutableArray *dataArr = [NSMutableArray array];
    for(NSUInteger i = 0;i < 30;i++){
        ZXTestSingleCVModel *model = [[ZXTestSingleCVModel alloc]init];
        model.name = [NSString stringWithFormat:@"城市%lu",i];
        model.iconImg = [UIImage imageNamed:@"city"];
        [dataArr addObject:model];
    }
    return dataArr;
}

@end

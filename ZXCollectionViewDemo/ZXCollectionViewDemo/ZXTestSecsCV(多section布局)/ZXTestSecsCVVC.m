//
//  ZXTestSecsCVVC.m
//  ZXCollectionViewDemo
//
//  Created by 李兆祥 on 2019/4/9.
//  Copyright © 2019 李兆祥. All rights reserved.
//

#import "ZXTestSecsCVVC.h"
#import "ZXCollectionView.h"
#import "ZXTestSingleCVCell.h"
#import "ZXTestSingleCVModel.h"

#import "ZXTestSecsCVHeaderView.h"
#import "ZXTestSecsCVFooterView.h"
@interface ZXTestSecsCVVC ()
@property (weak, nonatomic) IBOutlet ZXCollectionView *collectionView;

@end

@implementation ZXTestSecsCVVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setCollectionView];
    
}

-(void)setCollectionView{
    self.collectionView.backgroundColor = [UIColor colorWithRed:240 / 255.0 green:240 / 255.0 blue:240 / 255.0 alpha:1];
    self.collectionView.zx_setCellClassAtIndexPath = ^Class _Nonnull(NSIndexPath * _Nullable indexPath) {
        return [ZXTestSingleCVCell class];
    };
    self.collectionView.zx_setHeaderClassInSection = ^Class _Nonnull(NSInteger section) {
        return [ZXTestSecsCVHeaderView class];
    };
    self.collectionView.zx_getHeaderViewInSection = ^(NSInteger section, ZXTestSecsCVHeaderView *  _Nonnull headerView, id  _Nonnull model) {
        headerView.titleLabel.text = [NSString stringWithFormat:@"headerView--%lu",section];
    };
    self.collectionView.zx_setFooterClassInSection = ^Class _Nonnull(NSInteger section) {
        return [ZXTestSecsCVFooterView class];
    };
    self.collectionView.zx_getFooterViewInSection = ^(NSInteger section, ZXTestSecsCVHeaderView *  _Nonnull footerView, id  _Nonnull model) {
        footerView.titleLabel.text = [NSString stringWithFormat:@"footerView--%lu",section];
    };
    ZXCVFastModel *fastModel = [[ZXCVFastModel alloc]init];
    fastModel.colCount = 3;
    fastModel.superW = [UIScreen mainScreen].bounds.size.width;
    fastModel.itemHConstant = 30;
    [self.collectionView zx_fastWithModel:fastModel];
    self.collectionView.zxDatas = [self getData];
}

-(NSMutableArray *)getData{
    NSMutableArray *dataArr = [NSMutableArray array];
    for(NSUInteger i = 0;i < 9;i++){
        ZXTestSingleCVModel *model = [[ZXTestSingleCVModel alloc]init];
        model.name = [NSString stringWithFormat:@"城市%lu",i];
        model.iconImg = [UIImage imageNamed:@"city"];
        [dataArr addObject:model];
    }
    return [@[dataArr,dataArr,dataArr] mutableCopy];
}
@end

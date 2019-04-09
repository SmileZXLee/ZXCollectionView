//
//  ZXTestMainVC.m
//  ZXCollectionViewDemo
//
//  Created by 李兆祥 on 2019/4/8.
//  Copyright © 2019 李兆祥. All rights reserved.
//

#import "ZXTestMainVC.h"
#import "ZXCollectionView.h"
#import "ZXTestMainCell.h"

#import "ZXTestSingleCVVC.h"
#import "ZXTestSecsCVVC.h"
#import "ZXTestVarCVVC.h"
@interface ZXTestMainVC ()
@property (weak, nonatomic) IBOutlet ZXCollectionView *collectionView;

@end

@implementation ZXTestMainVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"ZXCollectionViewDemo";
    self.collectionView.zx_setCellClassAtIndexPath = ^Class _Nonnull(NSIndexPath * _Nullable indexPath) {
        return [ZXTestMainCell class];
    };
    __weak __typeof(self) weakSelf = self;
    self.collectionView.zx_didSelectItemAtIndexPath = ^(NSIndexPath * _Nonnull indexPath, NSString * _Nonnull model, id  _Nonnull cell) {
        UIViewController *VC;
        if(indexPath.row == 0){
            VC = [[ZXTestSingleCVVC alloc]init];
        }else if(indexPath.row == 1){
            VC = [[ZXTestSecsCVVC alloc]init];
        }else if(indexPath.row == 2){
            VC = [[ZXTestVarCVVC alloc]init];
        }
        if(VC){
            VC.title = model;
            [weakSelf.navigationController pushViewController:VC animated:YES];
        }
    };
    ZXCVFastModel *fastModel = [[ZXCVFastModel alloc]init];
    fastModel.superW = [UIScreen mainScreen].bounds.size.width;
    [self.collectionView zx_fastWithModel:fastModel];
    
    self.collectionView.zxDatas = [@[@"单一布局的CollectionView",@"多个Section的CollectionView",@"根据indexPath变换布局的CollectionView",@"感谢使用"]mutableCopy];
}


@end

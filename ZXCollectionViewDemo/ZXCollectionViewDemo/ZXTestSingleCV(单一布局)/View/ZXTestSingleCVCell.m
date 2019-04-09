//
//  ZXTestSingleCVCell.m
//  ZXCollectionViewDemo
//
//  Created by 李兆祥 on 2019/4/9.
//  Copyright © 2019 李兆祥. All rights reserved.
//

#import "ZXTestSingleCVCell.h"
#import "ZXTestSingleCVModel.h"
@interface ZXTestSingleCVCell()
@property (weak, nonatomic) IBOutlet UIImageView *iconImgV;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic)ZXTestSingleCVModel *sigleModel;
@end
@implementation ZXTestSingleCVCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.backgroundColor = [UIColor whiteColor];
}
-(void)setSigleModel:(ZXTestSingleCVModel *)sigleModel{
    _sigleModel= sigleModel;
    self.nameLabel.text = sigleModel.name;
    self.iconImgV.image = sigleModel.iconImg;
}

@end

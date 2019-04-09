//
//  ZXTestMainCell.m
//  ZXCollectionViewDemo
//
//  Created by 李兆祥 on 2019/4/8.
//  Copyright © 2019 李兆祥. All rights reserved.
//

#import "ZXTestMainCell.h"
@interface ZXTestMainCell()
@property (weak, nonatomic) IBOutlet UILabel *mainLabel;
@property (copy, nonatomic) NSString *mainModel;
@end
@implementation ZXTestMainCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.mainLabel.adjustsFontSizeToFitWidth = YES;
    self.mainLabel.numberOfLines = 0;
}
-(void)setMainModel:(NSString *)mainModel{
    _mainModel = mainModel;
    self.mainLabel.text = mainModel;
}

@end

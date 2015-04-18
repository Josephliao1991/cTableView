//
//  cTableViewCell.m
//  cTableView
//
//  Created by 廖宗綸 on 2015/4/19.
//  Copyright (c) 2015年 Joseph Liao. All rights reserved.
//

#import "cTableViewCell.h"

@implementation cTableViewCell

- (void)awakeFromNib {
    // Initialization code
    
    //Create Label
    if (!self.cLabel) {
        
        self.cLabel = [[UILabel alloc]initWithFrame:
                       CGRectMake(0, 0, self.frame.size.width-50, self.frame.size.height)];
        self.cLabel.numberOfLines = 0;
        self.cLabel.adjustsFontSizeToFitWidth = YES;
        self.cLabel.backgroundColor = [UIColor clearColor];
        self.cLabel.textAlignment = NSTextAlignmentCenter;
        
        [self addSubview:self.cLabel];
        
    }
    

    //Create Image
    if (!self.cImageView) {
        
        self.cImageView = [[UIImageView alloc]initWithFrame:
                           CGRectMake(self.cLabel.frame.size.width, 0,
                                      self.frame.size.height, self.frame.size.height)];
        
        [self addSubview:self.cImageView];
        
    }
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

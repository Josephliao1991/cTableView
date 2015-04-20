//
//  cTableViewCell.m
//  cTableView
//
//  Created by 廖宗綸 on 2015/4/19.
//  Copyright (c) 2015年 Joseph Liao. All rights reserved.
//

#import "cTableViewCell.h"

@implementation cTableViewCell
@synthesize cLabel = _cLabel;
@synthesize cImageView = _cImageView;

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self loadComponents];
    }
    return self;
}

-(void)loadComponents {
    [self loadcImageView];
    [self loadcLabel];
    [self loadConstraints];
}

-(void)loadcLabel {
    _cLabel = [[UILabel alloc] init];
    _cLabel.numberOfLines = 0;
    _cLabel.adjustsFontSizeToFitWidth = YES;
    _cLabel.backgroundColor = [UIColor clearColor];
    _cLabel.textAlignment = NSTextAlignmentCenter;
    _cLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.contentView addSubview:_cLabel];
}
-(void)loadcImageView {
    _cImageView = [[UIImageView alloc] init];
    _cImageView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.contentView addSubview:_cImageView];
}


-(void)loadConstraints {
    
    NSDictionary *viewsDict = @{@"label": self.cLabel,
                                @"imageView": self.cImageView};
    
    NSArray *constraints;
    
    // 水平
    constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"|-[label]-[imageView]|"
                                                          options:NSLayoutFormatAlignAllCenterY
                                                          metrics:nil
                                                            views:viewsDict];
    [self.contentView addConstraints:constraints];
    
    // 置中
    [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:viewsDict[@"label"]
                                                                attribute:NSLayoutAttributeCenterY
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.contentView
                                                                attribute:NSLayoutAttributeCenterY
                                                               multiplier:1 constant:0]];
    
    // set imageView ratio 1:1
    [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:viewsDict[@"imageView"]
                                                                 attribute:NSLayoutAttributeHeight
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:viewsDict[@"imageView"]
                                                                 attribute:NSLayoutAttributeWidth
                                                                multiplier:1 constant:0]];
    // imageView's height
    constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[imageView]|"
                                                          options:kNilOptions
                                                          metrics:nil
                                                            views:viewsDict];
    [self.contentView addConstraints:constraints];
}

@end
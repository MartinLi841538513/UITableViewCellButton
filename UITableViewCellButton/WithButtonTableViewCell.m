//
//  WithButtonTableViewCell.m
//  UITableViewCellButton
//
//  Created by dongway on 14-8-12.
//  Copyright (c) 2014年 martin. All rights reserved.
//

#import "WithButtonTableViewCell.h"

@implementation WithButtonTableViewCell

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

//触发事件
- (IBAction)buttonAction:(id)sender {
    [self.delegate buttonAction:sender];
}

@end

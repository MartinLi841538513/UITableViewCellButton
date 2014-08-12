//
//  WithButtonTableViewCell.h
//  UITableViewCellButton
//
//  Created by dongway on 14-8-12.
//  Copyright (c) 2014年 martin. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol WithButtonTableViewCellDelegate <NSObject>

-(void)buttonAction:(id)sender;

@end

@interface WithButtonTableViewCell : UITableViewCell

@property (nonatomic,retain)id<WithButtonTableViewCellDelegate>delegate;
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

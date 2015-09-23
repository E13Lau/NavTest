//
//  myTableViewHeaderView.m
//  NavTest
//
//  Created by 刘一智 on 15/9/23.
//  Copyright (c) 2015年 command.Zi. All rights reserved.
//

#import "myTableViewHeaderView.h"


@implementation myTableViewHeaderView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)layoutSubviews {
    [super layoutSubviews];
    self.myLabel.preferredMaxLayoutWidth = self.myLabel.bounds.size.width;
    NSLog(@"ViewlayoutSubviews");
}

@end

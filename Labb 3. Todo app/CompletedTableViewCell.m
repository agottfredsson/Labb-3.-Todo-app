//
//  CompletedTableViewCell.m
//  Labb 3. Todo app
//
//  Created by Anton Gottfredsson on 2020-01-22.
//  Copyright © 2020 Anton Gottfredsson. All rights reserved.
//

#import "CompletedTableViewCell.h"

@implementation CompletedTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    NSDate *currDate = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"dd.MM.YY HH:mm:ss"];
    NSString *dateString = [dateFormatter stringFromDate:currDate];
    _dateLabel.text = dateString;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

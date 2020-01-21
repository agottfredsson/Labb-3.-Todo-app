//
//  TableViewCell.m
//  Labb 3. Todo app
//
//  Created by Anton Gottfredsson on 2020-01-21.
//  Copyright © 2020 Anton Gottfredsson. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    
    
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (IBAction)starBtnPressed:(id)sender {
    _starBtn.hidden = YES;
    _starBtnFilledBtn.hidden = NO;
}
- (IBAction)filledStarBtnPressed:(id)sender {
    _starBtn.hidden = NO;
    _starBtnFilledBtn.hidden = YES;
    
}
- (IBAction)squareBtnPressed:(id)sender {
    if (_checkBtn.isHidden) {
        _checkBtn.hidden = NO;
    }   else {
        _checkBtn.hidden = YES;
    }
}


@end

//
//  TableViewCell.h
//  Labb 3. Todo app
//
//  Created by Anton Gottfredsson on 2020-01-21.
//  Copyright © 2020 Anton Gottfredsson. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIButton *starBtn;
@property (weak, nonatomic) IBOutlet UIButton *starBtnFilledBtn;
@property (weak, nonatomic) IBOutlet UIButton *squareBtn;
@property (weak, nonatomic) IBOutlet UIButton *checkBtn;



@end

NS_ASSUME_NONNULL_END

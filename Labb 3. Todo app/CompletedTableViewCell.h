//
//  CompletedTableViewCell.h
//  Labb 3. Todo app
//
//  Created by Anton Gottfredsson on 2020-01-22.
//  Copyright © 2020 Anton Gottfredsson. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CompletedTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@end

NS_ASSUME_NONNULL_END

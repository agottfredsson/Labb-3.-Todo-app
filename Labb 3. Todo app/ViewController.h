//
//  ViewController.h
//  Labb 3. Todo app
//
//  Created by Anton Gottfredsson on 2020-01-20.
//  Copyright © 2020 Anton Gottfredsson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TodoList.h"
#import "Singleton.h"




NS_ASSUME_NONNULL_BEGIN


@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableViewOutlet;

@property (nonatomic) TodoList *todoList;



@end

NS_ASSUME_NONNULL_END

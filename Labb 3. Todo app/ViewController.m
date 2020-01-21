//
//  ViewController.m
//  Labb 3. Todo app
//
//  Created by Anton Gottfredsson on 2020-01-20.
//  Copyright © 2020 Anton Gottfredsson. All rights reserved.
//

#import "ViewController.h"
#import "TodoList.h"


@interface ViewController ()



    
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.navigationItem setTitle:@"Checklist"];
    _todoList = [[TodoList alloc] init];
    
    self.tableViewOutlet.delegate = self;
    self.tableViewOutlet.dataSource = self;
    
}

- (void)viewDidAppear:(BOOL)animated {
    if ([[Singleton Instance] GetData] != nil && ![[[Singleton Instance]GetData] isEqualToString:@""]) {
         [_todoList createTodo:[[Singleton Instance] GetData]];
    }
    
    [self.tableViewOutlet reloadData];
    [[Singleton Instance] SetData:@""];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
             
    cell.textLabel.text = [_todoList.todoItems[indexPath.row] getTodo];
   
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_todoList getSize];
}


@end

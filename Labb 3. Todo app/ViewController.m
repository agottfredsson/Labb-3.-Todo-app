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


@property (weak, nonatomic) IBOutlet UIButton *checkBtn;



    
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
    
    //return 2;
    return 3;
}






//TEST
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell; /*= [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];*/
    
    if (indexPath.section == 0) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"CellI" forIndexPath:indexPath];
        cell.textLabel.text = [_todoList.favoriteItems[indexPath.row] getTodo];
        return cell;
        
    }
    if (indexPath.section == 1) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
        
        cell.textLabel.text = [_todoList.todoItems[indexPath.row] getTodo];
        return cell;
        
    }
    if (indexPath.section == 2) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"CellC" forIndexPath:indexPath];
            
        cell.textLabel.text = [_todoList.completedItems[indexPath.row] getTodo];
        return cell;
    }
   
            
   
    return cell;
}











//TEST
- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if (section == 0) {
        return _todoList.favoriteItems.count;
    }
    
    if (section == 1) {
        return _todoList.todoItems.count;
    }
    
    if (section == 2) {
        return _todoList.completedItems.count;
    } else {
        return 0;
    }
}
        
        
        
    




//TEST
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{

switch (section) {
case 0:
    return @"Important";
    break;
case 1:
    return @"Todos";
    break;
case 2:
    return @"Completed";
    break;
        
default:
    return nil;
    break;
    }
}











/*
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell;
    
    if (indexPath.section == 0) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
        
        cell.textLabel.text = [_todoList.todoItems[indexPath.row] getTodo];
        return cell;
    }
    if (indexPath.section == 1) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"CellC" forIndexPath:indexPath];
            
        cell.textLabel.text = [_todoList.completedItems[indexPath.row] getTodo];
        return cell;
    }
    if (indexPath.section == 2) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"CellI" forIndexPath:indexPath];
        cell.textLabel.text = [_todoList.favoriteItems[indexPath.row] getTodo];
        return cell;
    }
   
            
   
    return cell;
}
*/








/*- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 1) {
        if (_todoList.completedItems.count == 0) {
            return 0;
        }   else {
            return _todoList.completedItems.count;
        }//completed task section
    } else if (section == 0) {
        return [_todoList getSize];
    }  else if (section == 2) {
        return _todoList.favoriteItems.count;
    } else {
        return 0;
    }
}*/
    
   


/*
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    switch (section) {
    case 0:
        return @"Todos";
        break;
    case 1:
        return @"Completed";
        break;
    case 2:
        return @"Important";
        break;
            
    default:
        return nil;
        break;
    }
}*/













-(IBAction)btnFinished:(UIButton *)sender event:(UIEvent *)event{
    UITouch *touch = [[event allTouches] anyObject];
    CGPoint touchPos = [touch locationInView:self.tableViewOutlet];
    NSIndexPath *indexPath = [self.tableViewOutlet  indexPathForRowAtPoint:touchPos];
    if(indexPath != nil){
        [_todoList.completedItems addObject:_todoList.todoItems[indexPath.row]];
        [_todoList.todoItems removeObjectAtIndex:indexPath.row];
        [self.tableViewOutlet reloadData];
    }
}

-(IBAction)btnRemoveCompleted:(UIButton *)sender event:(UIEvent *)event{
    UITouch *touch = [[event allTouches] anyObject];
    CGPoint touchPos = [touch locationInView:self.tableViewOutlet];
    NSIndexPath *indexPath = [self.tableViewOutlet  indexPathForRowAtPoint:touchPos];
    if(indexPath != nil){
        [_todoList.completedItems removeObjectAtIndex:indexPath.row];
        [self.tableViewOutlet reloadData];
    }
}

-(IBAction)btnRemoveFavorite:(UIButton *)sender event:(UIEvent *)event{
    UITouch *touch = [[event allTouches] anyObject];
    CGPoint touchPos = [touch locationInView:self.tableViewOutlet];
    NSIndexPath *indexPath = [self.tableViewOutlet  indexPathForRowAtPoint:touchPos];
    if(indexPath != nil){
        [_todoList.completedItems addObject:_todoList.favoriteItems[indexPath.row]];
        [_todoList.favoriteItems removeObjectAtIndex:indexPath.row];
        [self.tableViewOutlet reloadData];
    }
}

-(IBAction)btnImportantPressed:(UIButton *)sender event:(UIEvent *)event{
    UITouch *touch = [[event allTouches] anyObject];
    CGPoint touchPos = [touch locationInView:self.tableViewOutlet];
    NSIndexPath *indexPath = [self.tableViewOutlet  indexPathForRowAtPoint:touchPos];
    if(indexPath != nil){
        [_todoList.favoriteItems addObject:_todoList.todoItems[indexPath.row]];
        [_todoList.todoItems removeObjectAtIndex:indexPath.row];
        [self.tableViewOutlet reloadData];
    }
}
/*
-(IBAction)btnRemoveFavorite:(UIButton *)sender event:(UIEvent *)event{
    UITouch *touch = [[event allTouches] anyObject];
    CGPoint touchPos = [touch locationInView:self.tableViewOutlet];
    NSIndexPath *indexPath = [self.tableViewOutlet  indexPathForRowAtPoint:touchPos];
    if(indexPath != nil){
        [_todoList.favoriteItems removeObjectAtIndex:indexPath.row];
        [self.tableViewOutlet reloadData];
    }
}*/

@end

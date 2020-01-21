//
//  NewTaskViewController.m
//  Labb 3. Todo app
//
//  Created by Anton Gottfredsson on 2020-01-20.
//  Copyright © 2020 Anton Gottfredsson. All rights reserved.
//

#import "NewTaskViewController.h"
#import "Todo.h"
#import "TodoList.h"


@interface NewTaskViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textFieldTask;
@property (nonatomic) TodoList *todoList;

@end

@implementation NewTaskViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    
    [self.navigationItem setTitle:@"New task"];
    
    
    
}
- (IBAction)addTaskBtn:(id)sender {
    NSString *todoString = _textFieldTask.text;
    [[Singleton Instance] SetData:todoString];
    
    NSMutableArray *activeControllerArray =  [self.navigationController.viewControllers mutableCopy];
    [activeControllerArray removeObjectAtIndex:1];
    self.navigationController.viewControllers = activeControllerArray;
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

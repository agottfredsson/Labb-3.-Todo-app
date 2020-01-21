//
//  TodoList.m
//  Labb 3. Todo app
//
//  Created by Anton Gottfredsson on 2020-01-20.
//  Copyright © 2020 Anton Gottfredsson. All rights reserved.
//

#import "TodoList.h"
#import "Todo.h"
#import "Singleton.h"

@implementation TodoList

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.todoItems = [NSMutableArray new];
        
    }
    return self;
}



- (void)createTodo:(NSString*) name {
        Todo *todo = [[Todo alloc] initWithName:name];
        [_todoItems addObject:todo];
}


- (NSInteger) getSize {
    return _todoItems.count;
}




@end

//
//  TodoList.h
//  Labb 3. Todo app
//
//  Created by Anton Gottfredsson on 2020-01-20.
//  Copyright © 2020 Anton Gottfredsson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Todo.h"

NS_ASSUME_NONNULL_BEGIN

@interface TodoList : NSObject

@property (nonatomic) NSMutableArray *todoItems;
@property (nonatomic) NSMutableArray *completedItems;
@property (nonatomic) NSMutableArray *favoriteItems;
- (void) createTodo:(NSString*) name;

- (NSInteger) getSize;


@end

NS_ASSUME_NONNULL_END

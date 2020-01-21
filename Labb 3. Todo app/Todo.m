//
//  Todo.m
//  Labb 3. Todo app
//
//  Created by Anton Gottfredsson on 2020-01-20.
//  Copyright © 2020 Anton Gottfredsson. All rights reserved.
//

#import "Todo.h"

@implementation Todo

- (instancetype)initWithName:(NSString*)name
{
    self = [super init];
    if (self) {
        self.name = name;
        self.isFinished = NO;
        self.isImportant = NO;
    }
    return self;
}

- (NSString *)getTodo {
    return self.name;
}



@end

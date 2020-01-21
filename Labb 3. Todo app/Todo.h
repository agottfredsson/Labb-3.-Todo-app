//
//  Todo.h
//  Labb 3. Todo app
//
//  Created by Anton Gottfredsson on 2020-01-20.
//  Copyright © 2020 Anton Gottfredsson. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Todo : NSObject

@property (nonatomic, strong) NSString* name;
@property (nonatomic) BOOL isImportant;
@property (nonatomic) BOOL isFinished;
- (instancetype)initWithName:(NSString *) name;
- (NSString*) getTodo;


@end

NS_ASSUME_NONNULL_END

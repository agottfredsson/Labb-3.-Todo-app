//
//  Singleton.m
//  Labb 3. Todo app
//
//  Created by Anton Gottfredsson on 2020-01-21.
//  Copyright © 2020 Anton Gottfredsson. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

static Singleton *instance = nil;

+ (id) Instance {
    if (instance == nil) {
        instance = [[Singleton alloc] init];
        //[[Singleton Instance] SetData:@""];
        
    }
    
    return instance;
}

- (void) SetData:(NSString*)value    {
    data = value;
}
- (NSString*) GetData {
    return data;
}

@end

//
//  Singleton.h
//  Labb 3. Todo app
//
//  Created by Anton Gottfredsson on 2020-01-21.
//  Copyright © 2020 Anton Gottfredsson. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Singleton : NSObject {
    NSString *data;
}
+ (id) Instance;
- (void) SetData:(NSString*) value;
- (NSString*) GetData;

@end

NS_ASSUME_NONNULL_END

//
//  LPStack.h
//  LeetCode
//
//  Created by 罗平 on 2019/8/30.
//  Copyright © 2019 罗平. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LPStack : NSObject

- (void)push:(id)object;

- (id)pop;

- (NSInteger)count;

@end

NS_ASSUME_NONNULL_END

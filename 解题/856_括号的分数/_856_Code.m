//
//  _856_Code.m
//  LeetCode
//
//  Created by 罗平 on 2019/8/30.
//  Copyright © 2019 罗平. All rights reserved.
//

/*
 *  我们用一个栈来维护当前所在的深度，以及每一层深度的得分
 *  有一种例外情况，如果遇到的是 ()，那么只将得分加一
 */

#import "_856_Code.h"

#import "LPStack.h"

@implementation _856_Code

- (NSInteger)scoreOfParentheses:(NSString *)string {
    
    LPStack *stack = [[LPStack alloc] init];
    [stack push:@(0)];
    for (NSInteger i = 0; i < string.length; i ++) {
        char c = string.UTF8String[i];
        if (c == '(') {
            [stack push:@(0)];
        } else {
            NSInteger now = [[stack pop] integerValue];
            NSInteger pre = [[stack pop] integerValue];
            [stack push:@(MAX(1, (now * 2) + pre))];
        }
    }
    
    return 0;
}

@end

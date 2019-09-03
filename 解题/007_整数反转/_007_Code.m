//
//  _007_Code.m
//  LeetCode
//
//  Created by 罗平 on 2019/9/3.
//  Copyright © 2019 罗平. All rights reserved.
//

#import "_007_Code.h"

/*
 *  1和2解法是一样的，不过2写法更加精简且复杂度更优
 *  这里需要注意数据溢出
 */

@implementation _007_Code

- (NSInteger)reverse:(NSInteger)x {

    NSInteger num = 0;
    NSInteger count = 1;
    while (x / count > 10) {
        count *= 10;
    }
    
    while (x > 0) {
        NSInteger ge = x % 10;
        x /= 10;
        num += count * ge;
        count /= 10;
    }
    return num;
}

- (NSInteger)reverse2:(NSInteger)x {
    NSInteger num = 0;
    while (x > 0) {
        num = num * 10 + x % 10;
        x /= 10;
    }
    return num;
}

@end

//
//  _009_Code.m
//  LeetCode
//
//  Created by 罗平 on 2019/9/3.
//  Copyright © 2019 罗平. All rights reserved.
//

#import "_009_Code.h"

/*
 *  1.
 *  取左右两边数字，比较。然后再把左右两边数字去掉继续比较
 *
 *  2.
 *  整数反转，比较两个数字是否相等，如果反转后出现溢出情况，则一定不是回文数
 *
 *  3.
 *  只需要反转前一半数字，和后一半做比较
 */

@implementation _009_Code

- (BOOL)isPalindrome:(NSInteger)x {
    
    if (x < 0) return NO;
    
    NSInteger count = 1;
    while (x / count > 10) {
        count *= 10;
    }
    
    while (x > 0) {
        
        NSInteger right = x % 10;
        NSInteger left = x / count;
        if (right != left) {
            return NO;
        }
        x = x % count / 10;
        count /= 100;
    }
    return YES;
}

@end

//
//  _001_Code.m
//  LeetCode
//
//  Created by 罗平 on 2019/9/3.
//  Copyright © 2019 罗平. All rights reserved.
//

/*
 *  1.
 *  利用一个字典来存储之前遍历过的数字
 *  遍历时，用target减当前数字得到另一个数字，和字典中的存储比对，如果字典存在该值，代表找到了
 *
 *  2.
 *  两个遍历循环解决问题，复杂度较高
 */

#import "_001_Code.h"

@implementation _001_Code

- (NSArray *)solution:(NSArray *)numsArray target:(NSInteger)target {
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    for (NSInteger index = 0; index < numsArray.count; index ++) {
        NSInteger num = [numsArray[index] integerValue];
        NSInteger preNum = target - num;
        if ([dict objectForKey:@(preNum)]) {
            NSInteger preIndex = [[dict objectForKey:@(preNum)] integerValue];
            return @[@(preIndex), @(index)];
        }
        [dict setObject:@(index) forKey:@(num)];
    }
    return nil;
}

- (NSArray *)solution2:(NSArray *)numsArray target:(NSInteger)target {
    
    for (NSInteger i = 0; i < numsArray.count; i ++) {
        NSInteger num1 = [numsArray[i] integerValue];
        for (NSInteger j = i + 1; j < numsArray.count; j ++) {
            NSInteger num2 = [numsArray[j] integerValue];
            if (num1 + num2 == target) {
                return @[@(i), @(j)];
            }
        }
    }
    return nil;
}

@end

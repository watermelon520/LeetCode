//
//  _018_Code.m
//  LeetCode
//
//  Created by 罗平 on 2019/9/5.
//  Copyright © 2019 罗平. All rights reserved.
//

#import "_018_Code.h"

/*
 *  基本和三数之和的逻辑一样
 *  先从小到大排序
 *  固定前两个数，后面前后双指针
 */

@implementation _018_Code

+ (void)initialize {
    
    _018_Code *a = [[_018_Code alloc] init];
    NSArray *b = [a fourSum:@[@(1), @(-2), @(-5), @(-4), @(-3), @(3), @(3), @(5)] target:-11];
    NSLog(@"%@", b);
}

- (NSArray *)fourSum:(NSArray *)nums target:(NSInteger)target {
 
    if (nums.count <= 3) return nil;
    
    nums = [nums sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        if ([obj1 integerValue] > [obj2 integerValue]) {
            return NSOrderedDescending;
        }
        return NSOrderedAscending;
    }];
    
    NSMutableArray *resultArray = [NSMutableArray array];
    NSInteger size = nums.count - 1;
    
    for (NSInteger firstIndex = 0; firstIndex < nums.count; firstIndex ++) {
        
        NSInteger first = [nums[firstIndex] integerValue];
        if (firstIndex > 0 && first == [nums[firstIndex - 1] integerValue]) continue;
        
        for (NSInteger secondIndex = firstIndex + 1; secondIndex < nums.count; secondIndex ++) {
            
            NSInteger leftIndex = secondIndex + 1;
            NSInteger rightIndex = size;
            if (rightIndex > size) break;
            NSInteger second = [nums[secondIndex] integerValue];
//            if (first + second > target) break;
            if (secondIndex - 1 > firstIndex && second == [nums[secondIndex - 1] integerValue]) continue;
            
            while (leftIndex < rightIndex) {
                
                NSInteger left = [nums[leftIndex] integerValue];
                NSInteger right = [nums[rightIndex] integerValue];
                NSInteger sum = first + second + left + right;
                
                if (sum == target) {
                    [resultArray addObject:@[@(first), @(second), @(left), @(right)]];
                    while (leftIndex < rightIndex && left == [nums[leftIndex + 1] integerValue]) {
                        leftIndex ++;
                    }
                    while (leftIndex < rightIndex && right == [nums[rightIndex - 1] integerValue]) {
                        rightIndex --;
                    }
                    rightIndex --;
                    leftIndex ++;
                } else if (sum > target) {
                    rightIndex --;
                } else if (sum < target) {
                    leftIndex ++;
                }
                
            }
        }
    }
    return resultArray;
}

@end

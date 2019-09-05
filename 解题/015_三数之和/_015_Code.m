//
//  _015_Code.m
//  LeetCode
//
//  Created by 罗平 on 2019/9/5.
//  Copyright © 2019 罗平. All rights reserved.
//

#import "_015_Code.h"

/*
 *  先从小到大排序
 *  固定前一个数，后面前后双指针
 */

@implementation _015_Code

+ (void)initialize {
    
    _015_Code *a = [[_015_Code alloc] init];
    NSArray *b = [a threeSum:@[@(2), @(0), @(2), @(-2), @(0)]];
    NSLog(@"%@", b);
}

- (NSArray *)threeSum:(NSArray *)nums {
    
    if (nums.count <= 2) return nil;
    
    //先从小到大排序
    nums = [nums sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        if ([obj1 integerValue] > [obj2 integerValue]) {
            return NSOrderedDescending;
        }
        return NSOrderedAscending;
    }];
    
    NSMutableArray *resultArray = [NSMutableArray array];
    NSInteger size = nums.count - 1;
    
    for (NSInteger index = 0; index < nums.count; index ++) {
        
        NSInteger leftIndex = index + 1;
        NSInteger rightIndex = size;
        if (rightIndex > size) break;
        NSInteger current = [nums[index] integerValue];
        //如果当前的数都大于0了，没必要循环了
        if (current > 0) break;
        //如果当前数 和 前一个数 相等，这里要去重
        if (index > 0 && current == [nums[index - 1] integerValue]) continue;
        
        while (leftIndex < rightIndex) {
            
            NSInteger left = [nums[leftIndex] integerValue];
            NSInteger right = [nums[rightIndex] integerValue];
            NSInteger sum = current + left + right;
            
            if (sum == 0) {
                [resultArray addObject:@[@(current), @(left), @(right)]];
                //如果左右指针移动后数字相同，去重继续
                while (leftIndex < rightIndex && left == [nums[leftIndex + 1] integerValue]) {
                    leftIndex ++;
                }
                while (leftIndex < rightIndex && right == [nums[rightIndex - 1] integerValue]) {
                    rightIndex --;
                }
                rightIndex --;
                leftIndex ++;
            } else if (sum > 0) {
                rightIndex --;
            } else if (sum < 0) {
                leftIndex ++;
            }
            
        }
    }
    return resultArray;
}

@end

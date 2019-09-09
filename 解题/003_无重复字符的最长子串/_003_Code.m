//
//  _003_Code.m
//  LeetCode
//
//  Created by 罗平 on 2019/9/6.
//  Copyright © 2019 罗平. All rights reserved.
//

#import "_003_Code.h"

@implementation _003_Code

+ (void)initialize {
    
    _003_Code *a = [[_003_Code alloc] init];
    NSInteger b = [a lengthOfLongestSubstring:@"abbasnak"];
    NSLog(@"%ld", b);
}

- (NSInteger)lengthOfLongestSubstring:(NSString *)s {
    
    char *str = s.UTF8String;
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    NSInteger maxLenth = 0;
    NSInteger index = 0;
    
    for (int j = 0; j < s.length; j++) {
        
        NSNumber *number = [dict objectForKey:@(str[j])];
        if (number) {
            index = [number integerValue];
        }
        
        maxLenth = MAX(maxLenth, j - index + 1);
        [dict setObject:@(j + 1) forKey:@(str[j])];
    }
    
    return maxLenth;
}

@end

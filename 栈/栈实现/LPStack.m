//
//  LPStack.m
//  LeetCode
//
//  Created by 罗平 on 2019/8/30.
//  Copyright © 2019 罗平. All rights reserved.
//

#import "LPStack.h"

@interface LPStack ()

@property (nonatomic, strong) NSMutableArray *array;

@end

@implementation LPStack

- (instancetype)init {
    self = [super init];
    if (self) {
        self.array = [NSMutableArray array];
    }
    return self;
}

- (void)push:(id)object {
    [self.array addObject:object];
}

- (id)pop {
    return self.array.lastObject;
}

- (NSInteger)count {
    return self.array.count;
}

@end

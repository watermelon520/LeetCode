//
//  LCListNode.m
//  LeetCode
//
//  Created by 罗平 on 2019/8/28.
//  Copyright © 2019 罗平. All rights reserved.
//

#import "LCListNode.h"

@implementation LCListNode

- (instancetype)initWithObject:(id)object {
    self = [super init];
    if (self) {
        self.object = object;
    }
    return self;
}

- (NSString *)description {
    NSMutableString *string = [NSMutableString stringWithFormat:@"%@", self.object];
    LCListNode *nextNode = self.next;
    while (nextNode) {
        [string appendFormat:@"->%@", nextNode.object];
        nextNode = nextNode.next;
    }
    return string;
}

@end

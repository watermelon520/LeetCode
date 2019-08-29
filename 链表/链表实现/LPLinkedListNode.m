//
//  LPLinkedListNode.m
//  LeetCode
//
//  Created by 罗平 on 2019/8/29.
//  Copyright © 2019 罗平. All rights reserved.
//

#import "LPLinkedListNode.h"

@implementation LPLinkedListNode

- (instancetype)initWithObject:(id)object {
    return [[LPLinkedListNode alloc] initWithPrev:nil object:object next:nil];
}

- (instancetype)initWithObject:(id)object next:(nullable LPLinkedListNode *)next {
    return [[LPLinkedListNode alloc] initWithPrev:nil object:object next:next];
}

- (instancetype)initWithPrev:(nullable LPLinkedListNode *)prev object:(id)object next:(nullable LPLinkedListNode *)next {
    self = [super init];
    if (self) {
        self.prev = prev;
        self.object = object;
        self.next = next;
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@_%@_%@", self.prev.object ?: @"nil", self.object, self.next.object ?: @"nil"];
}

- (void)dealloc {
    if (self.object) {    
        NSLog(@"dealloc - %@", self);
    }
}

@end

//
//  LPSingleLinkedList.m
//  LeetCode
//
//  Created by 罗平 on 2019/8/28.
//  Copyright © 2019 罗平. All rights reserved.
//

#import "LPSingleLinkedList.h"

@interface LPSingleLinkedList ()

@property (nonatomic, assign) NSUInteger size;
@property (nonatomic, strong) LPLinkedListNode *first;

@end

@implementation LPSingleLinkedList

- (void)addObject:(id)object {
    CheckObjectNil
    [self insertObject:object atIndex:self.size];
}

- (void)insertObject:(id)object atIndex:(NSUInteger)index {
    CheckObjectNil
    NSAssert(index >= 0 && index <= self.size, @"index 超出边界");
    LPLinkedListNode *newNode = [[LPLinkedListNode alloc] initWithObject:object];
    if (index == 0) {
        newNode.next = self.first;
        self.first = newNode;
    } else {
        LPLinkedListNode *previous = [self nodeAtIndex:index - 1];
        newNode.next = previous.next;
        previous.next = newNode;
    }
    self.size ++;
}

- (void)removeObject:(id)object {
    CheckObjectNil
    [self removeObjectAtIndex:[self indexOfObject:object]];
}

- (void)removeObjectAtIndex:(NSUInteger)index {
    CheckIndexRange
    if (index == 0) {
        self.first = self.first.next;
    } else {
        LPLinkedListNode *previous = [self nodeAtIndex:index - 1];
        previous.next = previous.next.next;
    }
    self.size --;
}

- (void)removeAllObjects {
    self.size = 0;
    self.first = nil;
}

- (void)setObject:(id)object atIndex:(NSUInteger)index {
    CheckObjectNil
    LPLinkedListNode *node = [self nodeAtIndex:index];
    node.object = object;
}

- (NSInteger)indexOfObject:(id)object {
    CheckObjectNil
    LPLinkedListNode *node = self.first;
    for (NSInteger i = 0; i < self.size; i ++) {
        if (node.object == object) {
            return i;
        }
        node = node.next;
    }
    return kNotFountTag;
}

- (id)objectAtIndex:(NSUInteger)index {
    CheckIndexRange
    return [self nodeAtIndex:index].object;
}

- (NSUInteger)count {
    return self.size;
}

- (BOOL)isEmpty {
    return (self.size == 0);
}

- (NSString *)description {
    NSMutableString *string = [NSMutableString string];
    [string appendString:@"\n-----------\n"];
    LPLinkedListNode *node = self.first;
    for (NSInteger i = 0; i < self.size; i ++) {
        [string appendFormat:@"%@\n", node.object];
        node = node.next;
    }
    [string appendString:@"-----------\n"];
    return string;
}

- (void)checkObjectNil:(id)object {
    NSAssert(object != nil, @"object 不能为空");
}

- (void)checkIndexRange:(NSUInteger)index {
    NSAssert(index >= 0 && index < self.size, @"index 超出边界");
}

- (LPLinkedListNode *)nodeAtIndex:(NSUInteger)index {
    CheckIndexRange
    if (index == 0) {
        return nil;
    }
    LPLinkedListNode *node = self.first;
    for (NSInteger i = 0; i < index; i ++) {
        node = node.next;
    }
    return node;
}

@end

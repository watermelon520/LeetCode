//
//  LPDoubleLinkedList.m
//  LeetCode
//
//  Created by Watermelon on 2019/8/28.
//  Copyright © 2019 罗平. All rights reserved.
//

#import "LPDoubleLinkedList.h"

@interface LPDoubleLinkedList ()

@property (nonatomic, assign) NSUInteger size;
@property (nonatomic, strong) LPLinkedListNode *first;
@property (nonatomic, strong) LPLinkedListNode *last;

@end

@implementation LPDoubleLinkedList

- (void)addObject:(id)object {
    CheckObjectNil
    [self insertObject:object atIndex:self.size];
}

- (void)insertObject:(id)object atIndex:(NSUInteger)index {
    CheckObjectNil
    NSAssert(index >= 0 && index <= self.size, @"index 超出边界");
    LPLinkedListNode *newNode = [[LPLinkedListNode alloc] initWithObject:object];

    if (index == 0) {
        
        self.first.prev = newNode;
        newNode.next = self.first;
        self.first = newNode;
        
        if (self.size == 0) {
            self.last = newNode;
        }
        
    } else if (index == self.size) {
        
        self.last.next = newNode;
        newNode.prev = self.last;
        self.last = newNode;
        
    } else {
        
        LPLinkedListNode *currentNode = [self nodeAtIndex:index];
        
        newNode.next = currentNode;
        newNode.prev = currentNode.prev;
        currentNode.prev.next = newNode;
        currentNode.prev = newNode;
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
        
    } else if (index == self.size - 1) {
        
        self.last = self.last.prev;
        self.last.next = nil;
        
    } else {
        
        LPLinkedListNode *currentNode = [self nodeAtIndex:index];
        currentNode.next.prev = currentNode.prev;
        currentNode.prev.next = currentNode.next;
    }
    self.size --;
}

- (void)removeAllObjects {
    self.size = 0;
    self.first = nil;
    self.last = nil;
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
        [string appendFormat:@"%@\n", node];
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
    if (index < (self.size >> 1)) {
        LPLinkedListNode *node = self.first;
        for (NSInteger i = 0; i < index; i ++) {
            node = node.next;
        }
        return node;
    } else {
        LPLinkedListNode *node = self.last;
        for (NSInteger i = self.size - 1; i > index; i --) {
            node = node.prev;
        }
        return node;
    }
}

@end

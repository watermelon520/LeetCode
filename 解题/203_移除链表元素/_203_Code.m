//
//  _203_Code.m
//  LeetCode
//
//  Created by 罗平 on 2019/8/28.
//  Copyright © 2019 罗平. All rights reserved.
//

/*
 *  https://leetcode-cn.com/problems/remove-linked-list-elements/
 *
 *  1.
 *  用一个指针记录头节点，一个指针记录上一个节点
 *  如果
 *
 *  2.
 *  先把要删除的就是第一个节点这种情况过滤
 *  然后再删除后面的节点
 *
 */

#import "_203_Code.h"

@implementation _203_Code

- (LCListNode *)removeElements:(LCListNode *)head object:(id)object {
    
    LCListNode *previonsNode = head;
    LCListNode *firstNode = head;
    while (head != nil) {
        if (head.object == object) {
            if (firstNode == head) {
                firstNode = firstNode.next;
            }
            previonsNode.next = head.next;
        } else {
            previonsNode = head;
        }
        head = head.next;
    }
    return firstNode;
}

- (LCListNode *)removeElements2:(LCListNode *)head object:(id)object {
    
    while (head != nil && head.object == object) {
        head = head.next;
    }
    if (head == nil) return head;
    
    LCListNode *emptyNode = head;
    while (emptyNode.next != nil) {
        if (emptyNode.next.object == object) {
            emptyNode.next = emptyNode.next.next;
        } else {
            emptyNode = emptyNode.next;
        }
    }
    
    return head;
}

- (LCListNode *)removeElements3:(LCListNode *)head object:(id)object {

    head.next = [self removeElements3:head.next object:object];
    if (head.object == object) {
        return head.next;
    } else {
        return head;
    }
}

@end

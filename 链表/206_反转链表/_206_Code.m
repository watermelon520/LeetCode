//
//  _206_Code.m
//  LeetCode
//
//  Created by 罗平 on 2019/8/28.
//  Copyright © 2019 罗平. All rights reserved.
//

/*
 *  https://leetcode-cn.com/problems/remove-linked-list-elements/
 *
 *  1.
 *  新建一个指针，反向创建链表
 *
 *  2.
 *  先把要删除的就是第一个节点这种情况过滤
 *  然后再删除后面的节点
 *
 */

#import "_206_Code.h"

@implementation _206_Code

- (LCListNode *)reverseList:(LCListNode *)head {
    LCListNode *newNode = nil;
    while (head != nil) {
        LCListNode *tmpNode = head.next;
        head.next = newNode;
        newNode = head;
        head = tmpNode;
    }
    return newNode;
}
// 3 2 1
- (LCListNode *)reverseList2:(LCListNode *)head {
    if (head == nil || head.next == nil) return head;
    LCListNode *newNode = [self reverseList2:head.next];
    head.next.next = head;
    head.next = nil;
    return newNode;
}

@end

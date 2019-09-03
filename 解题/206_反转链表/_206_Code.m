//
//  _206_Code.m
//  LeetCode
//
//  Created by 罗平 on 2019/8/28.
//  Copyright © 2019 罗平. All rights reserved.
//

/*
 *  1.
 *  新建一个指针，重新反向创建链表
 *
 *  2.
 *  n-1 n n+1 n+2
 *  递归法。假设从n开始，后面的节点的顺序已经成功反向
 *  则 n.next 是 n+1，要反向指向 n，所以 n.next.next = n；
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

- (LCListNode *)reverseList2:(LCListNode *)head {
    if (head == nil || head.next == nil) return head;
    LCListNode *newNode = [self reverseList2:head.next];
    head.next.next = head;
    head.next = nil;
    return newNode;
}

@end

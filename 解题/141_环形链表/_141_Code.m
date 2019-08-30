//
//  _141_Code.m
//  LeetCode
//
//  Created by 罗平 on 2019/8/28.
//  Copyright © 2019 罗平. All rights reserved.
//

/*
 *  https://leetcode-cn.com/problems/linked-list-cycle/
 *
 *  1.利用快慢指针
 *  慢指针一次跑一格，快指针一次跑两格，如果是环形链表，那在慢指针跑完之前，快指针一定会和慢指针相遇
 *
 *  2.利用可变容器存储(数组之类)
 *  遍历整个链表，把链表的地址加入容器中，每次遍历都判断容器中是否有该地址，如果遍历时有，则是环形链表，否则不是
 */

#import "_141_Code.h"

@implementation _141_Code

+ (BOOL)hasCycle1:(LCListNode *)head {
    
    LCListNode *fastNode = head.next;
    LCListNode *slowNode = head;
    //如果fastNode已经nil 或者 是最后一个节点(next为nil) 则说明该链表已经遍历完。直接返回NO，不是环形链表
    while (fastNode != nil && fastNode.next != nil) {
        if (fastNode == slowNode) return YES;
        slowNode = slowNode.next;
        fastNode = fastNode.next.next;
    }
    return NO;
}

//java不能使用null调用方法，hasCycle1 这样写在java里会报错，java可以这样写
+ (BOOL)hasCycle2:(LCListNode *)head {
    
    LCListNode *fastNode = head;
    LCListNode *slowNode = head;
    //如果fastNode已经nil 或者 是最后一个节点(next为nil) 则说明该链表已经遍历完。直接返回NO，不是环形链表
    while (fastNode != nil && fastNode.next != nil) {
        slowNode = slowNode.next;
        fastNode = fastNode.next.next;
        if (fastNode == slowNode) return YES;
    }
    return NO;
}

+ (BOOL)hasCycle3:(LCListNode *)head {
    
    NSMutableSet *set = [NSMutableSet set];
    while (head.next != nil) {
        if ([set containsObject:head.next]) {
            return YES;
        }
        [set addObject:head];
        head = head.next;
    }
    return NO;
}

@end

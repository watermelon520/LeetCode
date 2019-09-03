//
//  _237_Code.m
//  LeetCode
//
//  Created by 罗平 on 2019/8/28.
//  Copyright © 2019 罗平. All rights reserved.
//

/*
 *  这里只传入了将要删除的节点
 *  将该节点的next的值复制给该节点，并将改节点的next指向下一节点的next (这里要保证删除的不是尾节点，题目中有说明)
 */

#import "_237_Code.h"

#import "LCListNode.h"

@implementation _237_Code

- (void)deleteNode:(LCListNode *)node {
    node.object = node.next.object;
    node.next = node.next.next;
}

@end

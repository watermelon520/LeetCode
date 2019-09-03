//
//  _002_Code.m
//  LeetCode
//
//  Created by 罗平 on 2019/9/3.
//  Copyright © 2019 罗平. All rights reserved.
//

#import "_002_Code.h"

@implementation _002_Code

+ (void)load {
    
    /*
     输入：(2 -> 4 -> 3) + (5 -> 6 -> 4)
     输出：7 -> 0 -> 8
     原因：342 + 465 = 807
     */
    
    LCListNode *list1 = [[LCListNode alloc] initWithObject:@(2)];
//    list1.next = [[LCListNode alloc] initWithObject:@(4)];
//    list1.next.next = [[LCListNode alloc] initWithObject:@(3)];
    
    LCListNode *list2 = [[LCListNode alloc] initWithObject:@(8)];
//    list2.next = [[LCListNode alloc] initWithObject:@(6)];
//    list2.next.next = [[LCListNode alloc] initWithObject:@(4)];
    
    _002_Code *a = [[_002_Code alloc] init];
    LCListNode *b = [a addTwoNumbersList1:list1 list2:list2];
    NSLog(@"%@", b);
}

- (LCListNode *)addTwoNumbersList1:(LCListNode *)list1 list2:(LCListNode *)list2 {
 
    LCListNode *newList = [[LCListNode alloc] initWithObject:@(0)];
    LCListNode *currentNode = newList;
    LCListNode *node1 = list1;
    LCListNode *node2 = list2;
    NSInteger carry = 0;
    
    while (node1 || node2) {
        NSInteger num1 = [node1.object integerValue];
        NSInteger num2 = [node2.object integerValue];
        NSInteger sum = carry + num1 + num2;
        
        carry = sum / 10;
        currentNode.next = [[LCListNode alloc] initWithObject:@(sum % 10)];
        currentNode = currentNode.next;
        
        node1 = node1.next;
        node2 = node2.next;
    }
    if (carry > 0) {
        currentNode.next = [[LCListNode alloc] initWithObject:@(carry)];
    }
    
    return newList.next;
}

@end

//
//  LCListNode.h
//  LeetCode
//
//  Created by 罗平 on 2019/8/28.
//  Copyright © 2019 罗平. All rights reserved.
//

/**
 * Definition for singly-linked list.
 * class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode(int x) {
 *         val = x;
 *         next = null;
 *     }
 * }
 */

#import <Foundation/Foundation.h>

//将LeetCode算法题所使用的链表model专成OC语言
NS_ASSUME_NONNULL_BEGIN

@interface LCListNode : NSObject

@property (nonatomic, strong) id object;
@property (nonatomic, strong, nullable) LCListNode *next;

- (instancetype)initWithObject:(id)object;

@end

NS_ASSUME_NONNULL_END

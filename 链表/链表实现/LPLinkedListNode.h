//
//  LPLinkedListNode.h
//  LeetCode
//
//  Created by 罗平 on 2019/8/29.
//  Copyright © 2019 罗平. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LPLinkedListNode : NSObject

@property (nonatomic, strong) id object;
@property (nonatomic, strong, nullable) LPLinkedListNode *next;
@property (nonatomic, weak, nullable) LPLinkedListNode *prev;

- (instancetype)initWithObject:(id)object;
- (instancetype)initWithObject:(id)object next:(nullable LPLinkedListNode *)next;
- (instancetype)initWithPrev:(nullable LPLinkedListNode *)prev object:(id)object next:(nullable LPLinkedListNode *)next;

@end

NS_ASSUME_NONNULL_END

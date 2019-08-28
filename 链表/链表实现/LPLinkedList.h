//
//  LPLinkedList.h
//  LeetCode
//
//  Created by 罗平 on 2019/8/28.
//  Copyright © 2019 罗平. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSInteger const kNotFountTag = -1;

NS_ASSUME_NONNULL_BEGIN

@interface LPLinkedList : NSObject

- (void)addObject:(id)object;

- (void)insertObject:(id)object atIndex:(NSUInteger)index;

- (void)removeObject:(id)object;

- (void)removeObjectAtIndex:(NSUInteger)index;

- (void)removeAllObjects;

- (void)setObject:(id)object atIndex:(NSUInteger)index;

- (NSInteger)indexOfObject:(id)object;

- (id)objectOfIndex:(NSUInteger)index;

- (NSUInteger)count;

- (BOOL)isEmpty;

@end

NS_ASSUME_NONNULL_END

//
//  LPLinkedProtocol.h
//  LeetCode
//
//  Created by 罗平 on 2019/8/29.
//  Copyright © 2019 罗平. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LPLinkedListNode.h"

static NSInteger const kNotFountTag = -1;

#define CheckObjectNil [self checkObjectNil:object];
#define CheckIndexRange [self checkIndexRange:index];

NS_ASSUME_NONNULL_BEGIN

@protocol LPLinkedProtocol <NSObject>

@required
- (void)addObject:(id)object;

- (void)insertObject:(id)object atIndex:(NSUInteger)index;

- (void)removeObject:(id)object;

- (void)removeObjectAtIndex:(NSUInteger)index;

- (void)removeAllObjects;

- (void)setObject:(id)object atIndex:(NSUInteger)index;

- (NSInteger)indexOfObject:(id)object;

- (id)objectAtIndex:(NSUInteger)index;

- (NSUInteger)count;

- (BOOL)isEmpty;

@end

NS_ASSUME_NONNULL_END

//
//  main.m
//  LeetCode
//
//  Created by 罗平 on 2019/8/28.
//  Copyright © 2019 罗平. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "LPLinkedList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        LPLinkedList *linkedList = [[LPLinkedList alloc] init];
        
        [linkedList addObject:@"11"];
        [linkedList addObject:@"22"];
        [linkedList addObject:@"33"];
        
        NSInteger index = [linkedList indexOfObject:@"44"];
        
        NSLog(@"%ld", index);
        
    }
    return 0;
}

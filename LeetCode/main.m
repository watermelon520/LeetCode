//
//  main.m
//  LeetCode
//
//  Created by 罗平 on 2019/8/28.
//  Copyright © 2019 罗平. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "LPSingleLinkedList.h"
#import "LPDoubleLinkedList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        LPDoubleLinkedList *linkedList = [[LPDoubleLinkedList alloc] init];
        
        [linkedList addObject:@"11"];
        [linkedList addObject:@"22"];
        [linkedList addObject:@"33"];
        
        [linkedList removeObjectAtIndex:2];
        
        [linkedList addObject:@"44"];
        [linkedList insertObject:@"00" atIndex:0];
        
        NSLog(@"%@", linkedList);
        
    }
    return 0;
}

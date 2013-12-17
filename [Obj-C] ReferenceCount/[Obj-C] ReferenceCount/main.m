//
//  main.m
//  [Obj-C] ReferenceCount
//
//  Created by sonnet on 13. 2. 7..
//  Copyright (c) 2013년 sonnet. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <stdio.h>

int main()
{
    // reference count example
    id obj = [[NSObject alloc]init]; // refcount 1;
    printf("init %d\n", (int)[obj retainCount]); // retain 되고 있는 count의 수 출력
    [obj retain];
    printf("retain %d\n", (int)[obj retainCount]); // ++
    [obj retain];
    printf("retain %d\n", (int)[obj retainCount]); // ++
    
    [obj release];
    printf("release %d\n", (int) [obj retainCount]);
    [obj release];
    printf("release %d\n", (int) [obj retainCount]);
    [obj release];
    printf("release %d\n", (int) [obj retainCount]);
//    [obj release]; // runtime error. becuase its count become 0 = released!!
    
    
    id pool = [[NSAutoreleasePool alloc] init];
    /*
     여기서 일련의 작업을 수행한다.
     임시 객체에게 autorelease메시지를 보낸다.
    */
    [pool release]; // 인스턴스는 여기서 해제된다.
    return 0;
}


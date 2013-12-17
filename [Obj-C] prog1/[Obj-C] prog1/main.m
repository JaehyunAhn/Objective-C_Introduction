//
//  main.m
//  [Obj-C] prog1
//
//  Created by sonnet on 13. 2. 13..
//  Copyright (c) 2013년 sonnet. All rights reserved.
//

#import <Foundation/NSObject.h>
#import <stdio.h>
#if !defined(LOOP)
#define LOOP 3000
#endif

long globalCount = 0;

@interface testObj : NSObject
-(int) testMethod;
@end

@implementation testObj
-(int) testMethod { return (int) globalCount++; };
@end

int main(void)
{
    int i, v;
    id obj = [[testObj alloc]init];
    
    // testMethod 에 직접 메시지를 보내는 경우
    for(i=0; i<5000 * LOOP ; i++)
        v = [obj testMethod];
    
    // performSelector를 사용하는 경우
    for(i=0; i<5000 * LOOP ; i++)
        v = (int) [obj performSelector:@selector(testMethod)];
    
    // 함수를 호출하는 경우
    int (*f) (id, SEL);
    f = (int (*)(id, SEL)) [obj methodForSelector:@selector(testMethod)];
    for(i=0; i<5000 * LOOP ; i++)
        v = (*f)(obj, @selector(testMethod));
    
    
    
    return (v == 0);
}


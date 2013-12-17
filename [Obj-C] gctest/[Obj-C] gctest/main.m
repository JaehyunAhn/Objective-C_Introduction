//
//  main.m
//  [Obj-C] gctest
//
//  Created by sonnet on 13. 2. 13..
//  Copyright (c) 2013년 sonnet. All rights reserved.
//

#import <Foundation/NSObject.h>
#import <Foundation/NSGarbageCollector.h>
#import <stdio.h>
#import <stdlib.h>
#import <libc.h>
#define MASS 100000
#define LOOP 4

// interface part

@interface Chunk : NSObject
{
    int number;
    id  target;
    char mass[MASS];
}

- (id)   initWithLabel: (const char *)lab;
- (void) setTarget    : (id)obj;
- (void) finalize;
@end

// implementation part

@implementation Chunk
- (id) initWithLabel:(const char *)lab
{
    static int serial = 0;
    self = [super init];
    number = ++serial;
    target = nil;
    strcpy(mass, lab);
    return self;
}

- (void) setTarget:(id)obj
{
    target = obj;
}

- (void) finalize
{
    printf("%d %s\n",number, mass);
    [super finalize];
}
@end

// definition part

Chunk *g = nil; // 전역변수
id a[2];        // C style 배열
id *ma = nil;   // malloc allocation
id *na = nil;   // NSAlloc allocation
void *v = NULL; // not object
__weak Chunk *w[LOOP]; // weak referecnce


// function part

static void func(id *ptr)
{
    int i;
    id f;
    static id s = nil;
    
    f = [[Chunk alloc] initWithLabel:"Stack in func"];
    s = [[Chunk alloc] initWithLabel:"Static Var"];
    g = [[Chunk alloc] initWithLabel:"Global"];
    [g setTarget: [[Chunk alloc] initWithLabel:"Instance var"]];
    i = 1;
    
    a[i] = [[Chunk alloc] initWithLabel:"C-style array"];
    ma[i] =[[Chunk alloc] initWithLabel:"malloc"];
    na[i] =[[Chunk alloc] initWithLabel:"NSAlloc"];
    v    = [[Chunk alloc] initWithLabel:"Void *"];
    *ptr = [[Chunk alloc] initWithLabel:"Pointer"];
    for( i = 0; i< LOOP; i++)
    {
        if(w[i] == nil)
            w[i] = [[Chunk alloc] initWithLabel:"Weak reference"];
    }
}

// main part

int main(void)
{
    int i;
    ma = (id *) malloc(sizeof(id) *2);
    na = (id *) NSAllocateCollectable(sizeof(id)*2, NSScannedOption);
    
    for(i=0; i<8; i++)
    {
        id entry = nil;
        id m;
        m = [[Chunk alloc] initWithLabel:"Stack"];
        func(&entry);
        printf("-------\n");
        [[NSGarbageCollector defaultCollector] collectIfNeeded];
        sleep(1);
    }
    
    free(ma);
    return 0;
}


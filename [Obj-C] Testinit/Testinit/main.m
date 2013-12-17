//
//  main.m
//  Testinit
//
//  Created by sonnet on 13. 2. 7..
//  Copyright (c) 2013년 sonnet. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <stdio.h>

@interface A : NSObject
+ (void) initialize; // class method
@end

@implementation A
+ (void) initialize { printf("I'am A\n"); } // initialize method가 먼저 실행됨. main에서 안찍어도.
@end

@interface B : A
+ (void) initialize;
+ (void) setMessage: (const char *) msg;
- (void) sayHello; // instance method
@end

static const char *myMessage = "Hello";

@implementation B
+ (void) initialize { printf("I'am B\n"); }
+ (void) setMessage:(const char *)msg {myMessage = msg;}
- (void) sayHello { printf("%s\n",myMessage); }
@end

int main(void)
{
    id obj = [[B alloc] init];
    [obj sayHello];
    [B setMessage: "Have a good day!"];
    [obj sayHello];
    return 0;
}
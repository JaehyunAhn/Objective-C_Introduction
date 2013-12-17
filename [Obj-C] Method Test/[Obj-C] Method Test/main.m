//
//  main.m
//  [Obj-C] Method Test
//
//  Created by sonnet on 13. 2. 6..
//  Copyright (c) 2013년 sonnet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface MethodTest : NSObject
{
    
}
+ (void) printWithClassMethod;
- (void) printWithInstanceMethod;
@end

@implementation MethodTest
+ (void)printWithClassMethod
{
    NSLog(@"Running with class method");
}
- (void)printWithInstanceMethod
{
    NSLog(@"Running with instance method");
}
@end


int main(int argc, const char * argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    // insert code here...
    [MethodTest printWithClassMethod];
    MethodTest *mt = [MethodTest alloc]; // allocating
    [mt printWithInstanceMethod];
    
    [pool drain];
    return 0;
}


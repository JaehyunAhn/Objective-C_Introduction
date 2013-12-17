//
//  main.m
//  [Obj-C] Property synthesize test
//
//  Created by sonnet on 13. 2. 6..
//  Copyright (c) 2013년 sonnet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
#import "Prop.h"

int main(int argc, const char * argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
    Model *model = [[Model alloc]init];
    
    // synthesize를 통해 생성된 setter getter 사용법
    // model에는 nssting type의 data가 있다. NSString *data;
    [model setData:@"Hello Eye!"];
    NSLog([model data]); // Hello eye! - synthesize
    
    // dot 문법 상ㅇ하기
    model.data = @"Bye Eye!";
    NSLog(model.data); // Bye eye! - synthesize
    
    Model *model2 = [[Model alloc] init];
    [model2 setCustomData:@"Hello Eye!"];
    
    [pool drain]; // drain : auto release pool
    return 0;
}


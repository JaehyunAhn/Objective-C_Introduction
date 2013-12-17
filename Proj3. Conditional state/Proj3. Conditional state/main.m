//
//  main.m
//  Proj3. Conditional state
//
//  Created by sonnet on 12. 11. 25..
//  Copyright (c) 2012년 Jaehyun Ahn. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        int i, j;
        NSLog(@"First Num : ");
        scanf("%i",&i);
        NSLog((@"Second Num : "));
        scanf("%i",&j);
        
        if(i>j) {
            NSLog(@"%i > %i",i,j);
        }
        else if(i<j) {
            NSLog(@"%i < %i",i,j);
        }
        else
        {
            NSLog(@"%i = %i",i,j);
        }
        
    }
    return 0;
}


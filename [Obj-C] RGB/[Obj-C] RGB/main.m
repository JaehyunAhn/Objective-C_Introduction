//
//  main.m
//  [Obj-C] RGB
//
//  Created by sonnet on 13. 2. 7..
//  Copyright (c) 2013년 sonnet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RGB.h"

int main(void)
{
    RGB *u, *w;
    u = [[RGB alloc] initWithRed:255 green:127 blue:127];
    w = [[RGB alloc] initWithRed:0 green:127 blue:64];
    [u print];
    [w print];
    [[u blendColor:w] print];
    return 0;
}


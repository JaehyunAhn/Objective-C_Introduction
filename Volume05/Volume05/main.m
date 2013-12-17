//
//  main.m
//  Volume05
//
//  Created by Jaehyun Ahn on 12. 9. 28..
//  Copyright (c) 2012년 Jaehyun Ahn. All rights reserved.
//

#import "Volume.h"
#import "MuteVolume.h"
#import <stdio.h>

int main(void)
{
    id v, w;
    
    v = [[Volume alloc] initWithMin:0 max:10 step:2];
    w = [[Volume alloc] initWithMin:0 max:9 step:3];
    
    [v up]; // function call
    printf("%d %d\n", (Volume*)[v value], (Volume*)[w value]);
    [v up];
    [w up];
    printf("%d %d\n", (int)[v value], (int)[w value]);
    [v down];
    [w down];
    printf("%d %d\n", (int)[v value], (int)[w value]);
    
    // mute testing
    
    char buf[8];

    v = [[MuteVolume alloc] initWithMin:0 max:10 step:2];
    
    while(scanf("%s",buf) > 0)
    {
        switch (buf[0]) {
            case 'u' : [v up]; break;
            case 'd' : [v down]; break;
            case 'm' : [v mute]; break;
            case 'q' : return 0;
        }
        printf("Volume = %d\n", (int)[v value]);
    }
    
    return 0;
}


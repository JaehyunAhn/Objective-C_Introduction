//
//  Volume.m
//  Volume05
//
//  Created by Jaehyun Ahn on 12. 9. 28..
//  Copyright (c) 2012년 Jaehyun Ahn. All rights reserved.
//

#import "Volume.h"

@implementation Volume
-(id) initWithMin:(int)a max:(int)b step:(int)s
{
    self = [super init];
    if( self != nil )
    {
        val = min = a;
        max = b;
        step = s;
    }
    return self;
}

-(int)value
{
    return val;
}

-(id)up
{
    if((val += step) > max)
        val = max;
    return self;
}

-(id)down
{
    if((val-= step) < min)
        val = min;
    return self;
}

@end

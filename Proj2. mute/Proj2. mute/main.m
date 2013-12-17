//
//  main.m
//  Proj2. mute
//
//  Created by sonnet on 12. 11. 25..
//  Copyright (c) 2012년 Jaehyun Ahn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
{
    int mother;
    int son;
}

- (void) show;
- (void) setMother: (int) m;
- (void) setSon: (int) s;

@end

@implementation Fraction

- (void) show
{
    NSLog(@"the fraction is %i/%i = %f",son,mother,(double)son/mother);
}

- (void) setMother:(int)m
{
    mother = m;
}
- (void) setSon:(int)s
{
    son = s;
}

@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Fraction *myFraction;
        myFraction = [Fraction alloc];
        myFraction = [myFraction init];
        
        [myFraction setMother:3];
        [myFraction setSon:1];
        
        NSLog(@"the value of my fraction is..");
        [myFraction show];
        
        [myFraction release];
        
    }
    return 0;
}


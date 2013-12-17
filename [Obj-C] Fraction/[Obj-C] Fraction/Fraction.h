//
//  Fraction.h
//  [Obj-C] Fraction
//
//  Created by sonnet on 13. 2. 7..
//  Copyright (c) 2013년 sonnet. All rights reserved.
//

#import <Foundation/Foundation.h>

@class NSString;

@interface Fraction : NSObject
{
    int sgn;    // sign +, -
    int num;    // numerator
    int den;    // denominator
}

+ (id) fractionWithNumerator: (int)n denominator: (int) d;  // n/d
- (id) initWithNumerator: (int)n denominator: (int) d;      // n/d를 initialize하는 거임?
- (Fraction *) add: (Fraction *) obj;
- (Fraction *) sub: (Fraction *) obj;
- (Fraction *) mul: (Fraction *) obj;
- (Fraction *) div: (Fraction *) obj;
- (NSString *) description;

@end

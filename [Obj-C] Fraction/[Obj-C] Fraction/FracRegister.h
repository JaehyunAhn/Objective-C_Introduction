//
//  FracRegister.h
//  [Obj-C] Fraction
//
//  Created by sonnet on 13. 2. 7..
//  Copyright (c) 2013년 sonnet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

@interface FracRegister : NSObject
{
    Fraction *current;
    Fraction *prev;
}

- (id) init;
- (void) dealloc;
- (Fraction *) currentValue;
- (void) setCurrentValue: (Fraction *) val;
- (BOOL) undoCalc;
- (void) calculate:(char)op with: (Fraction *)arg;

@end

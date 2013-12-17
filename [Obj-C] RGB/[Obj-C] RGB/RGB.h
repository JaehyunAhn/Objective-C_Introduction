//
//  RGB.h
//  [Obj-C] RGB
//
//  Created by sonnet on 13. 2. 7..
//  Copyright (c) 2013년 sonnet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Foundation/NSObject.h>

@interface RGB : NSObject
{
    unsigned char red, green, blue;
}

- (id)initWithRed: (int)r green:(int)g blue:(int)b;
- (id)blendColor: (RGB *)color;
- (void) print;

@end

//
//  Volume.h
//  Volume05
//
//  Created by Jaehyun Ahn on 12. 9. 28..
//  Copyright (c) 2012년 Jaehyun Ahn. All rights reserved.
//

#import <Foundation/NSObject.h>

@interface Volume : NSObject
{
    int val;
    int min, max, step;
}

-(id)initWithMin:(int)a max:(int)b step:(int)s;
-(int)value;
-(id) up;
-(id) down;


@end

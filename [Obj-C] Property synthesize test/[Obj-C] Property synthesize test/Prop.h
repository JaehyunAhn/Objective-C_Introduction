//
//  Prop.h
//  [Obj-C] Property synthesize test
//
//  Created by sonnet on 13. 2. 6..
//  Copyright (c) 2013년 sonnet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface Model : NSObject
{
    NSString *data;
}
@property (copy, readwrite) NSString *data;
- (void) setCustomData: (NSString *)myData;
@end

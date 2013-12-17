//
//  Prop.m
//  [Obj-C] Property synthesize test
//
//  Created by sonnet on 13. 2. 6..
//  Copyright (c) 2013년 sonnet. All rights reserved.
//

#import "Prop.h"

@implementation Model
@synthesize data;
- (void) setCustomData: (NSString *)myData
{
    self.data = myData; // data를 셀프로? 이건 무슨소리?
}
@end

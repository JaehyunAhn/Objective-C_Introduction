//
//  Foo.h
//  [Obj-C] Class method message
//
//  Created by sonnet on 13. 2. 6..
//  Copyright (c) 2013년 sonnet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface Foo : NSObject // nsobject라는 영역에서 foo를 만듦
{
    // OUTLET은 외부의 다른 객체를 가리킬 수 있는 변수를 뜻함
    IBOutlet NSTextField *textField;
}
// -로 시작하는 줄은 method임 id sender를 입력받아서 action을 반환함.
- (IBAction)seed:(id)sender;
- (IBAction)generate:(id)sender;

@end

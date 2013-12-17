//
//  main.m
//  [Obj-C] Fast Enumeration
//
//  Created by sonnet on 13. 2. 6..
//  Copyright (c) 2013년 sonnet. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        
        /*****************************************************
                      Fast Enumeration Expression
        // one
        for (Type newVariable in expression) { statements }
        // two
        Type existingItem;
        for( existingItem in exoression ) { statements }
         *****************************************************/
        
        // NSArray
        NSArray *array = [NSArray arrayWithObjects:@"One",@"Two",@"Three",@"Four", nil];
        for( NSString *element in array)
            NSLog(@"element %@", element);
       
        
        // NSDictionary
        NSDictionary *dictionary = [NSDictionary dictionaryWithObjectsAndKeys:
                                    @"quattuor", @"four", @"quinque", @"five", @"sex", @"six", nil];
        NSString *key;
        for (key in dictionary)
            NSLog(@"English: %@, Latin: %@", key, [dictionary valueForKey:key]);
        
        // NSArray - nextObject
        NSArray *array2 = [NSArray arrayWithObjects:@"One",@"Two",@"Three", @"Four", nil];
        NSEnumerator *enumerator = [array2 reverseObjectEnumerator];
        for (NSString *element in enumerator)
            if([element isEqualToString:@"Three"])
                break;
        NSString *next = [enumerator nextObject];
        
        // 인덱스가 필요한 경우
        NSArray *array3 = [NSArray arrayWithObjects:@"One",@"Two",@"Three", @"Four", nil];
        NSUInteger index = 0;
        for(id elements in array3)
        {
            NSLog(@"Element at index %lu is %@",(unsigned long)index, elements);
            index++;
        }
        
        
        
    }
    return 0;
}


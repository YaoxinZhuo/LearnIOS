//
//  main.m
//  ocobject_3_12
//
//  Created by YaoxinZhuo on 3/12/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Complex.h"
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id datavalue;
        
        Complex *c1 = [[Complex alloc] init];
        Complex *c2 = [[Complex alloc] init];
        
        Complex *result;
        
        [c1 setReal:3.2 andImaginary:4.2];
        [c2 setReal:2.5 andImaginary:3.5];
        
        result = [c1 add:c2];
        [result print];
        NSLog(@"\n");
        
        Fraction *f = [[Fraction alloc] init];
        @try {
            [f noSuchMethod];
        }
        @catch (NSException *exception) {
            NSLog(@"Caught %@%@",[exception name],[exception reason]);
        }
        @finally { 
            NSLog(@"Execution continues!");
        }
        
    }
    return 0;
}

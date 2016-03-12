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
        
        Fraction *f1 = [[Fraction alloc] init];
        
        [f1 setTo:1 over:2];
        
        datavalue = f1;
        [datavalue print];
        
        datavalue = c2;
        [datavalue print];
    }
    return 0;
}

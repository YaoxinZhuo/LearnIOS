//
//  main.m
//  FractionTest
//
//  Created by YaoxinZhuo on 3/8/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *myfraction = [[Fraction alloc] init];
        
        [myfraction setNumerator:1];
        [myfraction setDenominator:3];
        
        NSLog(@"The value of myfraction is:");
        [myfraction print];
    }
    return 0;
}

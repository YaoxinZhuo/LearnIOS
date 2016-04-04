//
//  main.m
//  BackLearnOC_Class
//
//  Created by YaoxinZhuo on 3/31/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int gGloalVar = 5;
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction * myfraction1 = [[Fraction allocF] init];
        Fraction * myfraction2 = [[Fraction allocF] initWith:3 over:7];
        [myfraction1 setTo:1 over:2];
        
        [myfraction1 print];
        [myfraction2 print];
        
        Fraction *a, *b, *c;
        a = [[Fraction allocF] init];
        b = [[Fraction allocF] init];
        c = [[Fraction allocF] init];
        NSLog(@"Fractions alloced: %i",[Fraction count]);
    }
    return 0;
}

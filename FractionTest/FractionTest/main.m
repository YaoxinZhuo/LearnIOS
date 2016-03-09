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
        Fraction *myfraction1 = [[Fraction alloc] init];
        Fraction *myfraction2 = [[Fraction alloc] init];
        
        [myfraction1 setTo:1 over:2];
        [myfraction2 setTo:1 over:4];
        
        [myfraction1 print];
        NSLog(@"+");
        [myfraction2 print];
        NSLog(@"=");
        
        Fraction *tempfraction = [[Fraction alloc] init];
        tempfraction = [myfraction1 add:myfraction2];
        
        //[myfraction1 reduce];
        [tempfraction print];
    }
    return 0;
}

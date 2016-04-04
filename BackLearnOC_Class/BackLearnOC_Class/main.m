//
//  main.m
//  BackLearnOC_Class
//
//  Created by YaoxinZhuo on 3/31/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction * myfraction1 = [[Fraction alloc] init];
        Fraction * myfraction2 = [[Fraction alloc] initWith:3 over:7];
        [myfraction1 setTo:1 over:2];
        
        [myfraction1 print];
        [myfraction2 print];
    }
    return 0;
}

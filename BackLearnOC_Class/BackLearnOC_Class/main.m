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
        Fraction * myfraction = [[Fraction alloc] init];
        myfraction.numerator = 1;
        myfraction.denominator = 3;
        [myfraction print];
    }
    return 0;
}

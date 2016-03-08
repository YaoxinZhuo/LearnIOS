//
//  main.m
//  LearnBasicOC
//
//  Created by YaoxinZhuo on 3/7/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Fraction:NSObject

- (void) print;
- (void) setNumerator: (int) n;
- (void) setDenominator: (int) d;

@end

@implementation Fraction
{
    int numerator;
    int denominator;
}
- (void) print
{
    printf("%i/%i\n",numerator,denominator);
}
- (void) setNumerator:(int)n
{
    numerator = n;
}
- (void) setDenominator:(int)d
{
    denominator = d;
}
- (int) numerator
{
    return numerator;
}
- (int) denominator;
{
    return denominator;
}
@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Fraction * myfraction;
        myfraction = [Fraction alloc];
        myfraction = [myfraction init];
        [myfraction setDenominator:3];
        [myfraction setNumerator:1];
        
        NSLog(@"The fraction of myfraction is:");
        [myfraction print];
        
        NSLog(@"The fraction of myfraction is %i/%i",myfraction.numerator,myfraction.denominator);
        
        
        
    }
    return 0;
}

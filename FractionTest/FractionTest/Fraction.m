//
//  Fraction.m
//  FractionTest
//
//  Created by YaoxinZhuo on 3/8/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
/*{
    int numerator;
    int denominator;
}*/
@synthesize numerator,denominator;
-(void) print
{
    NSLog(@"%i/%i",numerator,denominator);
}

-(void) setNumerator:(int)n
{
    numerator = n;
}

-(void) setDenominator:(int)n
{
    denominator = n;
}

-(int) numerator
{
    return numerator;
}

-(int) denominator
{
    return denominator;
}

-(double) convertToNum
{
    if(denominator != 0)
    {
        return (double) numerator/denominator;
    }
    else
    {
        return NAN;
    }
}

-(void) setTo:(int)n over:(int)d
{
    numerator = n;
    denominator = d;
}

-(Fraction *) add:(Fraction *)f
{
    
    Fraction * tempfraction = [[Fraction alloc] init];
        
    tempfraction.numerator = numerator * f.denominator + denominator * f.numerator;
    tempfraction.denominator = denominator * f.denominator;
    [tempfraction reduce];
    return tempfraction;
}

-(void)reduce
{
    @autoreleasepool
    {
        int u = numerator;
        int v = denominator;
        int temp;
    
        while(v != 0)
        {
            temp = u % v;
            u = v;
            v = temp;
        }
    
        numerator /= u;
        denominator /= u;
    }
}

@end

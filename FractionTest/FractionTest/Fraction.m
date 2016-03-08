//
//  Fraction.m
//  FractionTest
//
//  Created by YaoxinZhuo on 3/8/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
{
    int numerator;
    int denominator;
}

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

@end

//
//  Fraction.m
//  BackLearnOC_Class
//
//  Created by YaoxinZhuo on 3/31/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator,denominator;

-(void) print
{
    NSLog(@"%i/%i",numerator,denominator);
}

-(double) converttoNum
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

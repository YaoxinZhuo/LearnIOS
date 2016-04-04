//
//  Fraction.m
//  BackLearnOC_Class
//
//  Created by YaoxinZhuo on 3/31/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import "Fraction.h"
static int gCounter;
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

-(void) setTo:(int)n over:(int)d
{
    numerator = n;
    denominator = d;
}

-(Fraction *)initWith:(int)n over:(int)d
{
    self = [super init];
    
    if(self)
    {
        [self  setTo:n over:d];
    }
    return self;
}

+(Fraction *) allocF
{
    extern int gCounter;
    ++ gCounter;
    return [Fraction alloc];
}

+(int) count
{
    extern int gCounter;
    return gCounter;
}

@end

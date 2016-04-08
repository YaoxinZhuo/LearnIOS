//
//  main.m
//  BackLearnOC_Class
//
//  Created by YaoxinZhuo on 3/31/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

@interface Fraction (MathOps)

-(Fraction* ) add: (Fraction *) f;
-(Fraction* ) mul: (Fraction *) f;
-(Fraction* ) sub: (Fraction *) f;
-(Fraction* ) div: (Fraction *) f;

@end

@implementation Fraction (MathOps)

-(Fraction *) add:(Fraction *)f
{
    Fraction *result = [[Fraction alloc] init];
}

-(Fraction *) sub:(Fraction *)f
{
    
}

-(Fraction *) mul:(Fraction *)f
{
    
}

-(Fraction *) div:(Fraction *)f
{
    
}

@end
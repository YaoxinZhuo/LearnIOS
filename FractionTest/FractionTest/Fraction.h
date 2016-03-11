//
//  Fraction.h
//  FractionTest
//
//  Created by YaoxinZhuo on 3/8/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int numerator, denominator;
-(void) print;
-(void) setNumerator:(int) n;
-(void) setDenominator:(int) n;
-(int) numerator;
-(int) denominator;
-(double) convertToNum;
-(void) setTo:(int)n over:(int) d;
//-(void) add: (Fraction *)f;
-(void) reduce;
-(Fraction *) add:(Fraction *)f;
@end

@interface ClassA : NSObject
{
    int x;
}
- (void) initVar;
@end

@interface ClassB : ClassA

-(void) printVar;

@end
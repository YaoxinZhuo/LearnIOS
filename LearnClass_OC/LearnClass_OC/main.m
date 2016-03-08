//
//  main.m
//  LearnClass_OC
//
//  Created by YaoxinZhuo on 3/8/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface  Calculator :NSObject

- (void) setAccumulator : (double) value;
- (void) clear;
- (double) accumulator;

- (void) add:(double) value;
- (void) subtract:(double) value;
- (void) multiply:(double) value;
- (void) divide:(double) value;

@end

@implementation Calculator
{
    double accumulator;
}

- (void) setAccumulator:(double)value
{
    accumulator = value;
}

- (void) clear
{
    accumulator = 0;
}

- (double) accumulator
{
    return accumulator;
}

- (void) add:(double)value
{
    accumulator += value;
}

- (void) subtract:(double)value
{
    accumulator -= value;
}

- (void) multiply:(double)value
{
    accumulator *= value;
}

- (void) divide:(double)value
{
    accumulator /= value;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Calculator *smallcal = [[Calculator alloc] init];
        
        [smallcal setAccumulator:12.0];
        [smallcal add:3];
        [smallcal subtract:4];
        [smallcal multiply:3];
        [smallcal divide: 2];
        NSLog(@"%g\n",smallcal.accumulator);
    }
    return 0;
}

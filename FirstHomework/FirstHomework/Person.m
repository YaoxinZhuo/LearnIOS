//
//  Person.m
//  FirstHomework
//
//  Created by YaoxinZhuo on 4/8/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)test1
{
    NSLog(@"调用了test1方法");
}

+ (void)test2
{
    [self test1];
    NSLog(@"调用了test2方法-%d", _age);
}
@end
//
//  main.m
//  objective-cFinalHomework
//
//  Created by YaoxinZhuo on 5/3/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (MyOption)
-(NSRange)firstAddress:(NSString *)target;
@end

@implementation NSString (MyOption)

-(NSRange)firstAddress:(NSString *)target
{
    return [self rangeOfString:target];
}


@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *this = @"http://www.itcast.cn";
        NSRange t = [this firstAddress:@"itcast"];
        NSLog(@"首%lu 尾%lu",(unsigned long)t.location,(unsigned long)(t.location+t.length));
    }
    return 0;
}

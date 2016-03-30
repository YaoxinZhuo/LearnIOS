//
//  main.m
//  BackLearnOC_3chapter
//
//  Created by YaoxinZhuo on 3/30/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYpoint : NSObject

-(void) setX;
-(void) setY;
-(int) getX;
-(int) getY;

@end

@implementation XYpoint

{
    int x;
    int y;
}

-(void) setX:(int) _x
{
    x = _x;
    return;
}

-(void) setY:(int) _y
{
    y = _y;
    return;
}

-(int) getX
{
    return x;
}

-(int) getY
{
    return y;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        XYpoint * p = [[XYpoint alloc] init];
        
        [p setX:1];
        [p setY:2];
        
        NSLog(@"The x point of p is %d",[p getX]);
        NSLog(@"The y point of p is %d",[p getY]);
        
    }
    return 0;
}

//
//  main.m
//  LearnOC_inherit
//
//  Created by YaoxinZhuo on 4/1/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"
#import "Rectangle.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];
        
        [myPoint setX:100 andY:200];
        [myRect setWidth:5 andHeight:20];
        
        [myRect setOrigin:myPoint];
        myRect.origin = myPoint;
        
        NSLog(@"Rectangle width is %d, height is %d",myRect.width,myRect.height);
        NSLog(@"Origin at (%i,%i)",myRect.origin.x,[myRect.origin y]);
        NSLog(@"Area = %i,Perimeter = %i",[myRect area],[myRect perimeter]);
    }
    return 0;
}

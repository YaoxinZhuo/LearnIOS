//
//  Rectangle.m
//  LearnOC_inherit
//
//  Created by YaoxinZhuo on 4/1/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
{
    XYPoint *origin;
}

@synthesize width,height;

-(void) setWidth:(int)w andHeight:(int)h
{
    width = w;
    height = h;
}

-(void) setOrigin:(XYPoint *)pt
{
    origin = pt;
}

-(int) area
{
    return width * height;
}

-(int) perimeter
{
    return (width + height) / 2;
}

-(XYPoint *)origin
{
    return origin;
}

-(void) translate:(XYPoint *)pt
{
    origin.x += pt.x;
    origin.y += pt.y;
}

-(BOOL) containsPoints:(XYPoint *)aPoint
{
        int xs = aPoint.x-origin.x;
        int ys = aPoint.y-origin.y;
        if(xs >= 0 && ys >= 0 && xs<width && ys <=height )
        {
            return true;
        }
        else{
            return false;
        }
}

@end

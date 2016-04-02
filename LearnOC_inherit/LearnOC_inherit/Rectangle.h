//
//  Rectangle.h
//  LearnOC_inherit
//
//  Created by YaoxinZhuo on 4/1/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "XYPoint.h"

@interface Rectangle : NSObject

@property int width,height;

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(void) setWidth:(int) w andHeight:(int) h;
-(int) area;
-(int) perimeter;
-(void) translate:(XYPoint *)pt;
-(BOOL) containsPoints:(XYPoint *)aPoint;

@end

//
//  zhengfangxing.m
//  ocFinalExam2
//
//  Created by YaoxinZhuo on 5/4/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import "zhengfangxing.h"

@implementation zhengfangxing
@synthesize bianchang;
-(int)mianji
{
    if(bianchang > 0)
    {
        return bianchang*bianchang;
    }
    else
    {
        return 0;
    }
}
-(int)zhouchang
{
    if(bianchang > 0)
    {
        return 4*bianchang;
    }
    else
    {
        return 0;
    }
}
@end

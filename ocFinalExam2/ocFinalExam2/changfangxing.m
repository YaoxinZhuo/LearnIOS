//
//  changfangxing.m
//  ocFinalExam2
//
//  Created by YaoxinZhuo on 5/4/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import "changfangxing.h"

@implementation changfangxing
@synthesize chang;
@synthesize kuan;
-(int)mianji
{
    if(chang > 0 && kuan >0)
    {
        return chang*kuan;
    }
    else
    {
        return 0;
    }
}
-(int)zhouchang
{
    if(chang > 0 && kuan >0 )
    {
        return 2*(chang+kuan);
    }
    else
    {
        return 0;
    }
}

@end

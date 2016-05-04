//
//  getWeek.m
//  ocFinalExam3
//
//  Created by YaoxinZhuo on 5/4/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import "getWeek.h"

@implementation getWeek
@synthesize year;
@synthesize month;
@synthesize day;
-(int)getweek
{
    if(month == 1 || month == 2)
    {
        month +=12;
        year -- ;
    }
    int temp = (day + 2*month + 3*(month + 1) / 5 + year + year / 4 - year / 100 + year / 400 )%7;
    return temp+1;
}
@end

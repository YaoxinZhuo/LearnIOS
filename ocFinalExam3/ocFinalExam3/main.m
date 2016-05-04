//
//  main.m
//  ocFinalExam3
//
//  Created by YaoxinZhuo on 5/4/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "getWeek.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        getWeek * t = [[getWeek alloc] init];
        int year,month,day;
        printf("请分别输入年，月，日:\n");
        scanf("%d %d %d",&year,&month,&day);
        t.year = year;
        t.month = month;
        t.day = day;
        NSLog(@"星期%d",[t getweek]);
    }
    return 0;
}

//
//  main.m
//  SimpleHomeworkForIntroduce
//
//  Created by YaoxinZhuo on 5/11/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//
//第1题
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        float a[3]={1.1,2.2,3.3};
        for(int i = 0;i < 3;i++)
        {
            NSLog(@"第%d个数字为%f\n",i,a[i]);
        }
    }
    return 0;
}

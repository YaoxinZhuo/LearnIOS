//
//  main.m
//  ocFinalExam2
//
//  Created by YaoxinZhuo on 5/4/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "changfangxing.h"
#import "zhengfangxing.h"

int main(int argc, const char * argv[])
{
    changfangxing *mc = [[changfangxing alloc] init];
    zhengfangxing *mz = [[zhengfangxing alloc] init];
    mc.chang = 2;
    mc.kuan = 1;
    NSLog(@"长方形面积和周长%d %d\n",[mc mianji],[mc zhouchang]);
    mz.bianchang = 4;
    NSLog(@"正方形面积和周长%d %d\n",[mz mianji],[mz zhouchang]);
    return 0;
}

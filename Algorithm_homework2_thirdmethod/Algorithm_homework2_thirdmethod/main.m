//
//  main.m
//  Algorithm_homework2_thirdmethod
//
//  Created by YaoxinZhuo on 4/17/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        const int length = 12;
        int a[length] = {1,-9,0,23,1,-2,-10,-9,-30,4,6,8};//待求和的数组
        int tsum = 0,maxsum = 0;
        for(int i = 0; i < length; i++)
        {
            tsum += a[i];
            if(tsum > maxsum)
            {
                maxsum = tsum;
            }
            if (tsum < 0)
            {
                tsum = 0;
            }
        }
        NSLog(@"动态规划的最大自序列和为:\n%i\n",maxsum);
    }
    return 0;
}

//
//  main.m
//  algorithm_homework1
//
//  Created by YaoxinZhuo on 4/17/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //最大自序列求和方法1 普通的顺序求和，一个个比较。
        //最笨的方法，一个一个按顺序求和，一个一个比较。
        const int length = 12;
        int a[length] = {1,-9,0,23,1,-2,-10,-9,-30,4,6,8};//待求和的数组
        int maxsum1 = 0;
        for(int i = 0; i < length;i++)
        {
            for(int j = 0; j < length; j++)
            {
                int tsum = 0;//遍历循环每一个子数组，求和再与最大和比较，保存最大值
                for(int k = i; k <= j;k++)
                {
                    tsum += a[k];
                }
                if(maxsum1 < tsum)
                {
                    maxsum1 = tsum;
                }
            }
        }
        NSLog(@"第一种最暴力算法顺序求和比较的结果为:\n%i\n",maxsum1);
        //稍微优化点的顺序比较求和算法
        int maxsum2 = 0;
        for(int i = 0; i < length;i ++)
        {
            int tsum = 0;//临时最大自序列和
            for(int j = i; j < length; j ++)
            {
                tsum += a[j];
                if(tsum > maxsum2)
                {
                    maxsum2 = tsum;
                }
            }
        }
        NSLog(@"第二种优化过的顺序求和比较的结果为:\n%i\n",maxsum2);
    }
    return 0;
}

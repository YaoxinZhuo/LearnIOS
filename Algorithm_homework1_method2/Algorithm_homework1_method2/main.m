//
//  main.m
//  Algorithm_homework1_method2
//
//  Created by YaoxinZhuo on 4/17/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import <Foundation/Foundation.h>
int findmax3(int a,int b,int c)//找三个数中最大的一个数
{
    if(a >= b && a >= c)
    {
        return a;
    }
    else if (b >= a && b >= c)
    {
        return b;
    }
    else
    {
        return c;
    }
}

int fenzhi(int *a,int l,int r)//分治,a是数组，l是左边界，r是右边界
{
    if(l > r)//l大于r就过了，返回一个极小值-999999不找了
    {
        return -999999;
    }
    if(l == r)//l等于r就是分治到一个元素了，直接返回这个元素。
    {
        return a[l];
    }
    int m = (l + r) / 2;//m表示中间
    //分为左右两个序列来处理，l为左，r为右
    int lmax =a[m],lsum = 0;
    for(int i = m;i >= l; i--)
    {
        lsum += a[i];
        if(lsum > lmax)
        {
            lmax = lsum;
        }
    }
    int rmax = a[m+1],rsum = 0;
    for(int i = m+1;i <= r; i++)
    {
        rsum += a[i];
        if(rsum > rmax)
        {
            rmax = rsum;
        }
    }
    return findmax3(lmax+rmax, fenzhi(a,l,m), fenzhi(a,m+1,r));
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        const int length = 12;
        int a[length] = {1,-9,0,23,1,-2,-10,-9,-30,4,6,8};//待求和的数组
        int maxsum = 0;
        maxsum = fenzhi(a, 0, 11);
        NSLog(@"分治法得到的最大自序列和为:\n%i\n",maxsum);
    }
    return 0;
}

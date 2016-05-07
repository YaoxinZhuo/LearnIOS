//
//  main.m
//  AlgorithmSecondHomework
//
//  Created by YaoxinZhuo on 5/6/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import <Foundation/Foundation.h>

void MyCopy(int a[],int b[],int left,int right)
{
    for(int i = left;i <= right;i++)
    {
        a[i] = b[i-left];
    }
}

void Merge(int a[],int b[],int left,int mid,int right)
{
    int i = left,j = mid, k=0;
    while((i < mid) && (j <= right))
    {
        if(a[i] <= a[j])
        {
            b[k] = a[i];
            i++;
        }
        else
        {
            b[k] = a[j];
            j++;
        }
        k++;
    }
    while(i < mid)
    {
        b[k] = a[i];
        k++;
        i++;
    }
    while(j <= right)
    {
        b[k] = a[j];
        k++;
        j++;
    }
}

void MergeSort(int a[],int left,int right)
{
    if(left < right)
    {
        int n;
        n = (int)sqrt(right - left + 1);
        int b[right-left+1];
        for(int k = 0;k < right-left+1;k++)
        {
            b[k] = 0;
        }
        for(int j = 0;j < n; j++)
        {
            MergeSort(a, left+j*n, left+(j+1)*n-1);//分段
        }
        MergeSort(a, left+n*n, right);//最后一段
        
        //合并
        for(int i = 1; i < n ;i++)
        {
            Merge(a, b, left, left+i*n, left+(i+1)*n-1);
            //合并到数组b,合并后长度为left到left+(i+1)*n-1
            MyCopy(a, b, left, left+(i+1)*n-1);
             //复制回数组a
        }
        if(left + n*n <= right)  //最后一段
        {
            Merge(a,b,left,left+n*n,right);
            MyCopy(a,b,left,right); //复制回数组a
        }
    }
}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int length = 11;
        int a[11] = {1,2,-4,3,9,123,432,-23,92,32,10};
        MergeSort(a, 0, length-1);
        for(int i = 0;i < length;i++)
        {
            printf(" %d ",a[i]);
        }
    }
    return 0;
}

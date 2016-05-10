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
        a[i] = b[i-left];//把b复制到a
    }
}

void Merge(int a[],int b[],int left,int mid,int right)
{
    int i = left,j = mid, k=0;
    //i从0到mid－1，j从mid到right，写到临时的b数组中
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
    //如果i没复制完
    while(i < mid)
    {
        b[k] = a[i];
        k++;
        i++;
    }
    //如果j没复制完
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
        int n;//n为分组数，向下取整
        n = (int)sqrt(right - left + 1);
        
        //开一个临时数组初始化为0,objective-c默认初始化为0，等价于注释中的效果
        int b[right-left+1];
        /*
        for(int k = 0;k < right-left+1;k++)
        {
            b[k] = 0;
        }
        */
        
        //开始对前面可能的n组前根号n向下去整个数组递归
        for(int j = 0;j < n; j++)
        {
            MergeSort(a, left+j*n, left+(j+1)*n-1);//分段
        }
        //如果有没有的情况，就是我例子中的11个元素，3个一组前3组每组3个，最后一组是非3个（2个）
        MergeSort(a, left+n*n, right);//最后一段
        
        //合并
        for(int i = 1; i < n ;i++)
        {
            Merge(a, b, left, left+i*n, left+(i+1)*n-1);
            //开始将数组移到b数组中
            MyCopy(a, b, left, left+(i+1)*n-1);
            //复制回来
        }
        //同上的最后一段
        if(left + n*n <= right)  //最后一段
        {
            Merge(a,b,left,left+n*n,right);
            MyCopy(a,b,left,right);
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

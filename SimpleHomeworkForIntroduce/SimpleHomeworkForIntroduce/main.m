//
//  main.m
//  SimpleHomeworkForIntroduce
//
//  Created by YaoxinZhuo on 5/11/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//
//第1题
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        unsigned long int a[100] = {0,1,1,1,2};
        for(int i = 5;i < 100;i++)
        {
            a[i] = a[i-1] + a[i-3];
        }
        for(int i = 1;i < 100;i++)
        {
            printf("第%d年有%lu头牛\n",i,a[i]);
        }
    return 0;
}
}
//第2题，长度为35的数组，元素代表标号，输入随机次数，每次随机生成0到34的两个int型整数，交换在数组中位置为这两个整数的元素，达到随机的效果
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int a[35];
        int n;
        
        for(int i = 0;i < 35;i ++)
        {
            a[i]=i+1;
        }
        printf("请输入你想随机分组的次数n:\n");
        scanf("%d",&n);
        int temp1,temp2;
        for(int i = 0;i < n;i ++)
        {
            temp1 = arc4random()%35;
            temp2 = arc4random()%35;
            
            while(temp1 == temp2)
            {
                temp1 = arc4random()%35;
                temp2 = arc4random()%35;
            }
            int t;
            t = a[temp1];
            a[temp1] = a[temp2];
            a[temp2] = t;
        }
        for(int i = 0; i < 5;i++)
        {
            printf("第%d组有:\n",i+1);
            for(int j = 0;j < 7;j++)
            {
                printf("%d ",a[j+i*7]);
            }
            printf("\n");
        }
    }
    return 0;
}


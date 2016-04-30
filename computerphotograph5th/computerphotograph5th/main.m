//
//  main.m
//  computerphotograph5th
//
//  Created by YaoxinZhuo on 4/30/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int canshu[3][3]={1,1,1,1,1,1,1,1,1};
        int B[3][1];
        int result[3][1]={0,0,0};
        printf("请输入三个面片的漫反射率p1,p2,p3\n");
        int p[3];
        scanf("%d %d %d",&p[0],&p[1],&p[2]);
        printf("请分别输入1->2,1->3,2->1,2->3,3->1,3->2的辐射度\n");
        int temp[2][2];
        scanf("%d %d %d %d %d %d",&temp[0][0],&temp[0][1],
              &temp[1][0],&temp[1][1],&temp[2][0],&temp[2][1]);
        canshu[0][1]=-p[0]*temp[0][0];
        canshu[0][2]=-p[0]*temp[0][1];
        canshu[1][0]=-p[1]*temp[1][0];
        canshu[1][2]=-p[1]*temp[1][1];
        canshu[2][0]=-p[2]*temp[2][0];
        canshu[2][1]=-p[2]*temp[2][1];
        printf("请输入B1，B2，B3\n");
        scanf("%d %d %d",&B[0][0],&B[1][0],&B[2][0]);
        for(int i = 0; i < 3; i++)
        {
            for(int j =0;j<1;j++)
            {
                for(int k = 0;k<3;k++)
                {
                    result[i][j] += canshu[i][k]*B[k][j];
                }
            }
        }
        printf("输出三个B的值\n");
        printf("%d \n%d \n%d \n",result[0][0],result[1][0],result[2][0]);
    }
    return 0;
}

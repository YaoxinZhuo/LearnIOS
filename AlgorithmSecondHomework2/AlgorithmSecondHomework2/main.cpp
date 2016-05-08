//
//  main.cpp
//  AlgorithmSecondHomework2
//
//  Created by YaoxinZhuo on 5/7/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#include <iostream>
#include <cmath>

int mymin(int a,int b)
{
    if(a <= b)
    {
        return a;
    }
    return b;
}

int solve(char s1[],char s2[],int k)
{
    int dp[1000][1000];
    int length1 = 3;
    int length2 = 4;
    dp[0][0] = 0;
    for(int i = 0; i <= length1; i++)
    {
        dp[i][0] = i*k;
    }
    for(int i = 1;i <= length2; i++)
    {
        dp[0][i] = i*k;
    }
    for(int i = 1;i <= length1; i++)
    {
        for(int j =1;j <=length2 ; j++)
        {
            dp[i][j] = mymin(dp[i-1][j-1]+abs(s1[i-1]-s2[j-1]),mymin(dp[i-1][j],dp[i][j-1])+k);
        }
    }
    return dp[length1][length2];
}

int main(int argc, const char * argv[]) {
    int k;
    char s1[50];
    char s2[50];
    std::cin>>s1;
    std::cin>>s2;
    std::cin>>k;
    //char s1[3]={'c','m','c'};
    //char s2[4]={'s','n','m','n'};
    printf("%d\n",solve(s1, s2, k));
    return 0;
}
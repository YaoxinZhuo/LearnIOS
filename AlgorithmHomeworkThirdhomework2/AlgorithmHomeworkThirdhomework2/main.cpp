//
//  main.cpp
//  AlgorithmHomeworkThirdhomework2
//
//  Created by YaoxinZhuo on 5/23/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#include <iostream>
#include "vector"
#include "stack"

using namespace std;

const int maxn = 100;//最多的点数
const int maxN = 100;//一条边的最远距离

struct  bian_vector//自定义边的结构体，两个成员都为int类型，to为目标点，dis为距离
{
    int to;
    int dis;
};

vector<bian_vector>v[maxn];

stack<int>distanceIsi_stack[maxn*maxN];//distanceIsi_stack[i]：存离起点距离为i的有哪些点

int main()
{
    
    int n,e,N;//n点数,e边数,N边的最大距离
    int dis[maxn];//记录起点到各个点的距离
    cout<<"请分别输入点数n，边数e，边的最大距离N"<<endl;
    cin>>n>>e>>N;
    memset(dis,-1,sizeof(dis));
    
    for(int i = 1; i <= e ; i++)//输入每条边的信息
    {
        int a,b,w;
        cout<<"请输入第"<<i<<"条边的起点，终点，边的距离"<<endl;
        cin>>a>>b>>w;
        v[a].push_back(bian_vector{b,w});
    }
    
    //1是起点
    distanceIsi_stack[0].push(1);//1号点为起点，距离为0
    
    for(int i = 0;i < n*N;i++)
    {
        while( !distanceIsi_stack[i].empty() )
        {
            int st = distanceIsi_stack[i].top();
            distanceIsi_stack[i].pop();
            if(dis[st] != -1)
            {
                continue;
            }
            dis[st] = i;
            for(int j = 0; j < v[st].size(); j++)
            {
                distanceIsi_stack[i+v[st][j].dis].push(v[st][j].to);
            }
        }
    }
    
    for(int i = 1; i <= n; i++ )
    {
        cout<<"第"<<i<<"个点距离起点1的距离为:"<<dis[i]<<endl;
    }
    
    return 0;
}
//有贪心的感觉，满足O(n*N+e)的复杂度，但和dijkstra，还是差挺多的，不知道可不可以
//没有测过很多数据，不知道有没有写错
/*
4 5 5
1 2 1
1 3 3
2 3 1
2 4 3
3 4 4
 
 */

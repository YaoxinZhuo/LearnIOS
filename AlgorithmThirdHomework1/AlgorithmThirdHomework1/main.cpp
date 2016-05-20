//
//  main.cpp
//  AlgorithmThirdHomework1
//
//  Created by YaoxinZhuo on 5/20/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#include <iostream>
using namespace std;

int main(int argc, const char * argv[]) {
    // insert code here...
    int a[11] = {1,5,2,6,12,15,24,3,9,4,18};
    int length = 11;
    sort(a,a+length);
    //k个序列需要k－1次排序，数组中每个元素代表该序列的长度，因为m和n长度序列合并次数固定为m＋n－1，huffman编码进行
    
    for(int i = 0;i < length;i++)
    {
        cout<<a[i]<<" ";
    }
    
    int cost = 0;
    
    for(int i = 0;i < length-1;i++)
    {
        a[i+1] = a[i] + a[i+1];
        cost += a[i+1];
        sort(a+i+1,a+length);
    }
    
    cout<<"总的次数为:"<<cost<<endl;
    return 0;
}

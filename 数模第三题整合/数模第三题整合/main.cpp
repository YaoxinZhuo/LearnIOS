//
//  main.cpp
//  数模第三题整合
//
//  Created by YaoxinZhuo on 5/28/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#include "iostream"
#include "stdio.h"
#include "iomanip"
using namespace std;

double yearSumInput;//年总收入
double yearAward;//年终奖
double monthInput;//月收入
double sumFax;//总缴纳的税
double monthInputFax;//月收入缴税
double yearAwardFax;//年缴税

double minFax;//最小税
double maxMonthInput;//最大月收入
double maxyearAward;//最大年终奖

double texRate[10]={0.03,0.06,0.2,0.25,0.3,0.35,0.45};  //税率
int border[10] = {1500,4500,9000,35000,55000,80000};   //边界
double number[10]={0};                                 //速算扣除数

void yearAwardFaxCal()
{
    if ((yearAward/12)>=0&&(yearAward/12)<=1500)
    {
        yearAwardFax=yearAward*texRate[0]-number[0];
    }
    else if ((yearAward/12)>1500&&(yearAward/12)<=4500)
    {
        yearAwardFax=yearAward*texRate[1]-number[1];
    }
    else if ((yearAward/12)>4500&&(yearAward/12)<=9000)
    {
        yearAwardFax=yearAward*texRate[2]-number[2];
    }
    else if ((yearAward/12)>9000&&(yearAward/12)<=35000)
    {
        yearAwardFax=yearAward*texRate[3]-number[3];
    }
    else if ((yearAward/12)>35000&&(yearAward/12)<=55000)
    {
        yearAwardFax=yearAward*texRate[4]-number[4];
    }
    else if ((yearAward/12)>55000&&(yearAward/12)<=80000)
    {
        yearAwardFax=yearAward*texRate[5]-number[5];
    }
    else if ((yearAward/12)>80000)
    {
        yearAwardFax=yearAward*texRate[6]-number[6];
    }
}

void monthFaxCal()
{
    double over3500;//表示月收入超出3500的部分，少于或等于0则没有每月缴税
    over3500=monthInput-3500;
    if(over3500<=0)
    {
        monthInputFax=0;
    }
    else if(over3500>0&&over3500<=1500)
    {
        monthInputFax=over3500*texRate[0]-number[0];
    }
    else if(over3500>1500&&over3500<=4500)
    {
        monthInputFax=over3500*texRate[1]-number[1];
    }
    else if(over3500>4500&&over3500<=9000)
    {
        monthInputFax=over3500*texRate[2]-number[2];
    }
    else if(over3500>9000&&over3500<=35000)
    {
        monthInputFax=over3500*texRate[3]-number[3];
    }
    else if(over3500>35000&&over3500<=55000)
    {
        monthInputFax=over3500*texRate[4]-number[4];
    }
    else if(over3500>55000&&over3500<=80000)
    {
        monthInputFax=over3500*texRate[5]-number[5];
    }
    else if(over3500>80000)
    {
        monthInputFax=over3500*texRate[6]-number[6];
    }
}

int main()
{
    for(int i=1;i<=6;i++)
    {
        number[i]=border[i-1]*(texRate[i]-texRate[i-1])+number[i-1];
    }
    
    for(yearSumInput=70000;yearSumInput<=120000;yearSumInput=yearSumInput+1000)
    {
        minFax = 120000.0;
        maxyearAward=0.0;
        maxMonthInput=0.0;
        for (yearAward=0; yearAward<=yearSumInput; yearAward+=1)
        {
            monthInput=(yearSumInput-yearAward)/12.0;
            yearAwardFaxCal();
            monthFaxCal();
            sumFax=monthInputFax*12+yearAwardFax;
            if(sumFax<minFax)
            {
                minFax=sumFax;
                maxyearAward=yearAward;
                maxMonthInput=monthInput;
            }
        }
        //cout<<"年总收入:"<<yearSumInput;
        cout<<minFax<<endl;
        //minFax<<"最大月收入:"<<maxMonthInput<<"最大年终奖:"<<maxyearAward<<endl;
    }
    return 0;
}
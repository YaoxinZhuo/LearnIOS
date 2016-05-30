//
//  main.cpp
//  TB
//
//  Created by OCC's Air on 16/5/27.
//  Copyright (c) 2016年 MacBooK Air. All rights reserved.
//



#include<stdio.h>
#include<math.h>
double yearInput,over3500,yearAwar,everyMonth,sumFax,minFax=120000,everyMonthFax,yearAwardFax;
void monthFaxCal()
{
    if(over3500>=0&&over3500<=1500)
        everyMonthFax=0.03*over3500;
    else if(over3500>1500&&over3500<=4500)
        everyMonthFax=0.1*over3500-105;
    else if(over3500>4500&&over3500<=9000)
        everyMonthFax=0.2*over3500-555;
    else if(over3500>9000&&over3500<=35000)
        everyMonthFax=0.25*over3500-1005;
    else if(over3500>35000&&over3500<=55000)
        everyMonthFax=0.3*over3500-2755;
    else if(over3500>55000&&over3500<=80000)
        everyMonthFax=0.35*over3500-5505;
    else if(over3500>80000)
        everyMonthFax=0.45*over3500-13505;
    else
        everyMonthFax = 0.0;
}
void yearAwardCal()
{
    yearAwar=yearInput-12*(over3500+3500);
    if ((yearAwar/12)>=0&&(yearAwar/12)<=1500)
        yearAwardFax=0.03*yearAwar;
    else if((yearAwar/12)>1500&&(yearAwar/12)<=4500)
        yearAwardFax=0.1*yearAwar-105;
    else if((yearAwar/12)>4500&&(yearAwar/12)<=9000)
        yearAwardFax=0.2*yearAwar-555;
    else if((yearAwar/12)>9000&&(yearAwar/12)<=35000)
        yearAwardFax=0.25*yearAwar-1005;
    else if((yearAwar/12)>35000&&(yearAwar/12)<=55000)
        yearAwardFax=0.3*yearAwar-2755;
    else if((yearAwar/12)>55000&&(yearAwar/12)<=80000)
        yearAwardFax=0.35*yearAwar-5505;
    else if((yearAwar/12)>80000)
        yearAwardFax=0.45*yearAwar-13505;
}
int main()
{
    for(yearInput = 70000;yearInput<=120000;yearInput+=1000)

    {
        minFax=120000;
    for(over3500=-3500;over3500<=(yearInput/12.0-3500);over3500++)
    {
        monthFaxCal();
        yearAwardCal();
        sumFax=12*everyMonthFax+yearAwardFax;
        if(sumFax<=minFax)
        {
            minFax=sumFax;
            everyMonth=over3500+3500;
        }
    }
    printf("年收入：%.2f   月工资：%.2f     最低年税收：%.2f   年终一次性奖：%.2f \n",yearInput,everyMonth,minFax,yearInput-12*everyMonth);
    }
}

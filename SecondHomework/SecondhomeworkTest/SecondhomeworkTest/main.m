//
//  main.m
//  SecondhomeworkTest
//
//  Created by YaoxinZhuo on 4/15/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main()
{
    Person *p1 = nil;// p1 无值
    
    @autoreleasepool
    {
        p1 = [[Person alloc] init];//p1  1
    }
    
    @autoreleasepool
    {
        [p1 autorelease];
        
        Person *p2 = [[[Person alloc] init] autorelease];
        
        Person *p3 = [[Person alloc] init];//p3  1
        
        @autoreleasepool
        {
            NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
            
            [p3 autorelease];
            
            Person *p4 = [[Person alloc] init];
            
            [pool release];//p3 销毁
            
            [p4 autorelease];
        }//p4销毁
        
    }//p1,p2销毁
    
    
    return 0;
}
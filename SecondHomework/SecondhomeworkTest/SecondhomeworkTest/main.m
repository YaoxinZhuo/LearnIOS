//
//  main.m
//  SecondhomeworkTest
//
//  Created by YaoxinZhuo on 4/15/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//
#import <Foundation/Foundation.h>
@class Dog;
@interface Person : NSObject
@property (nonatomic, retain) Dog *dog;
@end


@implementation Person
- (void)dealloc
{
    self.dog = nil;
    [super dealloc];
}
@end

// 请问main函数中有无代码出现内存泄露
int main()
{
    @autoreleasepool
    {
        Person *p = [[[Person alloc] init] autorelease];
        p.dog = [[Dog alloc] init];//该Dog没有被释放
        //Dog可以[[[Dog alloc] init] autorelease];这样添加到到外面那个autoreleasepool中去，结束了就能自动释放
        //上面那个implementation我还有点疑问，我有点迷糊：就是时不时self.dog = nil;只是指针指向空了，但原来申请的空间是不是并初始化还没有释放，指针空了但那块内存中的东西还没走，我
        //的疑问就是上行添加autoreleasepool后达到这样的效果。
        [[Person alloc] init].dog = [[[Dog alloc] init] autorelease];
    }
    return 0;
}
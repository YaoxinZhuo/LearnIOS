1.autorelease
// 假设有个Person类，请问p1、p2、p3、p4指向的对象分别在第几行代码后会销毁
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

2.set方法内存管理
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
        
        
        [[[Person alloc] init] autorelease].dog = [[[Dog alloc] init] autorelease];
    }
    return 0;
}

3.set方法内存管理

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

// 请问d1、d2、d3、p1、p2指向的对象分别在第几行代码后被销毁
int main()
{
    @autoreleasepool
    {
        Dog *d1 = [[Dog alloc] init];//1
        Dog *d2 = [[Dog alloc] init];//1
        Dog *d3 = [[[Dog alloc] init] autorelease];
        
        Person *p2 = [[Person alloc] init];//1
        p2.dog = d2;//p2  1
        [d2 release];
        
        @autoreleasepool
        {
            Person *p1 = [[[Person alloc] init] autorelease];//p1  1
            
            p1.dog = d1;
            [d1 release];
        }//p1销毁,d1销毁
        
        p2.dog = d3;//d2销毁
        
        [p2 release];//p2销毁
    }//d3销毁
    return 0;
}
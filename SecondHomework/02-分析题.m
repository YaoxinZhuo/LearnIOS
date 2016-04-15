1.autorelease
// 假设有个Person类，请问p1、p2、p3、p4指向的对象分别在第几行代码后会销毁
int main()
{
    Person *p1 = nil;// p1 无值
    //nil为空，所以无值。
    @autoreleasepool
    {
        p1 = [[Person alloc] init];//p1  1
    }
    //来自于alloc，copy，mutableCopy和new为前缀方法创建的对象并不会自动添加到autoreleasepool中，所以在autoreleasepool结束后这这个p1是存在的，但是不会autoreleasepool，不会被自动释放
    @autoreleasepool
    {
        [p1 autorelease];
        //p1被添加到这个新的autoreleasepool中
        Person *p2 = [[[Person alloc] init] autorelease];
        //创建一个p2，申请并初始化，然后添加到上一个autoreleasepool中
        Person *p3 = [[Person alloc] init];//p3  1
        //创建一个p3，申请并初始化，但是没有添加到autoreleasepool
        @autoreleasepool
        {
            NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
            //pool申请并初始化
            [p3 autorelease];
            //p3被放到嵌套中的autoreleasepool中
            Person *p4 = [[Person alloc] init];
            //p4申请并初始化
            [pool release];//p3 销毁
            //pool被release，计数由1变0，被系统销毁释放
            [p4 autorelease];
            //p4添加到这个autoreleaepool中，然后}来了，结束了，所以下面被销毁
        }//p4销毁
        
    }//p1,p2销毁
    //p1,p2添加到外层的autoreleasepool中，所以}来了，结束了，释放销毁。
    
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
        //Dog可以[[[Dog alloc] init] autorelease];这样添加到到外面那个autoreleasepool中去，结束了就能自动释放
        //上面那个implementation我还有点疑问，我有点迷糊：就是时不时self.dog = nil;只是指针指向空了，但原来申请的空间是不是并初始化还没有释放，指针空了但那块内存中的东西还没走，我
        //的疑问就是上行添加autoreleasepool后达到这样的效果。
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
        //申请三条狗，d3在池子中
        Person *p2 = [[Person alloc] init];//1
        p2.dog = d2;//p2  1
        [d2 release];
        //p2出现，先释放person原来的dog，然后把新的dog引用给它
        @autoreleasepool
        {
            Person *p1 = [[[Person alloc] init] autorelease];//p1  1
            //p1在嵌套的内部的autoreleasepool中
            p1.dog = d1;
            [d1 release];//d1不属于autoreleasepool中，是手动释放的，release－1后系统释放销毁
        }//p1销毁,d1销毁
        //p1是这个autoreleasepool的，所以给放了
        p2.dog = d3;//d2销毁
        //p2的dog不是d2了，d2没引用了，所以销毁。
        [p2 release];//p2销毁
        //p2手动release－1然后销毁
    }//d3销毁
    //d3放到外面autoreleasepool中，所以}了就自动销毁了。
    return 0;
}
1.计数器的基本操作
#import <Foundation/Foundation.h>
@class Dog;

@interface Person : NSObject
@property (nonatomic, assign) Dog *dog;
@end

@implementation Person
@end

int main()
{
    Person *p = [[Person alloc] init];
    [p release];
    [p retain];   //多了
    /*
     1:创建对象时初始的引用计数为1，release后－1，就为0了，然后系统知道它不用了，然后系统发送dealloc销毁对象
    */
    Person *p2 = [[Person alloc] init];
    [p2 dealloc];//不能直接调用dealloc方法
    [p2 release];
    /*
     2.Person类继承于NSObject类，父类才有dealloc方法，释放所拥有的对象，要用应该先realease到0，然后调用父类NSObject方法，[super dealloc]才行
    */
    Person *p3 = [[Person alloc] init]; //没减1
    
    Dog *d = [[Dog alloc] init];
    [d release];//已经说野指针
    /*
     3.原来d指向一块申请的初始化的内存，发送release消息后，马上被销毁，占用内存贝回收，但指针还在，成为野指针。
     */
    p3.dog = d;//野指针错误
    
    [p3 release];
    return 0;
}

2.@property
//假有设car class(类) car，dog class(类)

@interface Person : NSObject
@property (nonatomic, assign) Car *car;//对象应该用retain修饰
@property (nonatomic, atomic, retain) int age;//nonatomic和atomic谁同一种修饰词，只能用一个，一般都用nonatomic；retain用来修饰OC对象类型，非OC对象类型用assign修饰
@property (nonatomic, readwrite, readonly) int height;//readwrite和readonly是同一种修饰词，只能用一个
@property (nonatomic, retain, setter=setMyDog) Dog *dog;//setter要用冒号 :
@end
/*
 4.assign用＝号时引用直接过去，不推荐的，retain用＝号时是先检测两者是否相等，不想等会先release原来的内存，再申请新的内存复制值然后retain，再赋值新的内存
 */
@implementation Person
- (void)dealloc
{
    [_car release];
    [_age release];//非对象类型不用进行内存管理
    [_height release];//非对象类型不用进行内存管理
    [_dog release];
    [super dealloc];
    /*
     5.对象需要进行release释放－1，height和age属于int类型，非对象类型，所以不用release，最后在调用父类的dealloc方法进行销毁
     */
}
@end

3.autorelease

int main()
{
    @autoreleasepool
    {
          Person *p = [[[Person alloc] init] release];//不能一开始就release，否则刚刚创建就销毁了，等于无操作
        Person *p1 = [[Person alloc] init] autorelease];
        /*
        6.有时候需要返回再释放，这时候手动释放就不一定好，解决这种问题的方法最好是自动释放这个对象
         [[[Class alloc] init] autorelease];
         或[return [result autorelease]];
         */
        [p1 release];//已用autorelease修饰不能再用release，否则会内存混乱
        
        Person *p2 = [[[[Person alloc] init] autorelease] autorelease];//autorelease只能调用一次
    }
    return 0;
}

4.autorelease
// 假设有个Person类，有个@property (nonatomic, assign) int age;
int main()
{
    Person *p = nil;
    @autoreleasepool
    {
        p = [[Person alloc] init];
        
        @autoreleasepool
        {
            [p autorelease];
        }//自动释放池销毁后，p调用了release方法，p变成了野指针
        /*
         7.autoreleasepool中的对象被标记，自动释放池销毁后p被release后－1，成为0，系统dealloc，内存无了，但指针还指着它，下面的setAge就会没有用。
         */
        [p setAge:10];//此处调用野指针，会发生指针错误（野指针错误）
    }
    return 0;
}
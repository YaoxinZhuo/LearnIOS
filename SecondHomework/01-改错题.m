1.计数器的基本操作
// 假设有狗这个类
//缺少#improt <Foundation/Foundation.h>　　　　 　　　  
@class Dog;
@interface Person : NSObject
@property (nonatomic, assign) Dog *dog;
@end
@implementation Person
@end

int main()
{
    Person *p = [[Person alloc] init];
    [p release];//p指针成为了野指针
    [p retain];//不能对野指针进行retain 操作
    
    Person *p2 = [[Person alloc] init];
    [p2 dealloc];//不能直接调用dealloc方法
    [p2 release];
    
    Person *p3 = [[Person alloc] init];
    
    Dog *d = [[Dog alloc] init];
    [d release];//d成为了野指针，指向的是不能用的内存
    
    p3.dog = d;//造成了野指针错误
    
    [p3 release];
    return 0;
}

2.@property
// 假设有Dog类、Car类
// 请找出不合理或者错误的地方
@interface Person : NSObject
@property (nonatomic, assign) Car *car;//对象应该用retain修饰
@property (nonatomic, atomic, retain) int age;//nonatomic和atomic是同一种修饰词，只能用一个，一般都用nonatomic；retain用来修饰OC对象类型，非OC对象类型用assign修饰
@property (nonatomic, readwrite, readonly) int height;//readwrite和readonly是同一种修饰词，只能用一个
@property (nonatomic, retain, setter=setMyDog) Dog *dog;//setter方法要有冒号：
@end

@implementation Person
- (void)dealloc
{
    [_car release];
    [_age release];//非对象类型不用进行内存管理
    [_height release];//非对象类型不用进行内存管理
    [_dog release];//
    [super dealloc];
}
@end

3.autorelease
// 假设有个Person类
int main()
{
    @autoreleasepool
    {
        Person *p = [[[Person alloc] init] release];//这么用的话，生成的Person对象直接被销毁，无用操作
        
        Person *p1 = [[[Person alloc] init] autorelease];
        
        [p1 release];//autorelease修饰的对象不能在调用release，会造成内存混乱
        
        Person *p2 = [[[[Person alloc] init] autorelease] autorelease];//只能调用一次autorelease
        
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
            [p autorelease];//p成为autorelease修饰的对象，会自动调用release
        }//自动释放池销毁后，p自动调用release方法，p成为野指针
        
        [p setAge:10];//发生野指针错误
    }
    return 0;
}
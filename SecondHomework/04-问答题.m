/*
 1、#import和#include的区别，@class代表什么？
    import引入预处理文件，防止重复引用，include不能防止，只能引用，@class是声明有一个这样的类，我记得书上好像是可以不用import.h头文件，@class后你写类就不报错，但用类的时候还是要import类文件才能使用
 2、谈谈Object-C的内存管理方式及过程？
    手动管理内存计数，初始化为1，retain＋1，release－1，到0后系统就把它释放掉，自动释放池可以解决创建一个对象但不能销毁，返回后才行，需要return [object autorelease];平时用autoreleasepool{}中也需要alloc，new,copy,mutableCopy或init开头的都需要手动添加进去自动释放池。
 3、Object-C有私有方法吗？私有变量呢？
    没有，有，interface中private中可以私有，私有方法查了后可以用分类分个出来再实现“私有”
 4、Object-C有多继承吗？没有的话用什么代替？cocoa 中所有的类都是NSObject 的子类
    没有，分类和协议。
 5、内存管理 Autorelease、retain、copy、assign的set方法和含义？
    autorelease是将对象添加到自动释放池中去，retain是手动引用＋1，copy是深复制对象，两个对象内容相同但内存块不同，assign就是引用，两个对象指向同一个内存。
 6、浅拷贝和深拷贝区别是什么
    浅拷贝就是类似于两个指针指向同一个内存，一个改变另一个也肯定改变，但深拷贝会完全创建一个一样对象给复制对象，两个对象内容一样内存不一样。
 7、C和obj-c 如何混用
    原文件名以.mm扩展
 8、Objective-C中类别和类扩展的区别。
    类别和类扩展没看懂，分类是对已经封装好的一个完整的类进行声明，扩展可以有自己的变量和私有方法。
 9、我们说的Objective-C是动态运行时语言是什么意思？
    动态类型id，对象不清楚，在编译运行的时候才知道它具体的类型。
 10、Objective-C堆和栈的区别？
    栈容量小，内存中低地址，系统控制，堆容量大，内存中高地址，程序员可以手动控制。
*/

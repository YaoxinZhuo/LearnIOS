#import <Foundation/Foundation.h>
@interface Animal : NSObject
- (void)test1;
@end

@implementation Animal
- (void)test1
{
    NSLog(@"Animal-test1");
}
@end

@interface Dog : Animal
@end

@implementation Dog
- (void)test1
{
    NSLog(@"Dog-test1");
}
@end

int main()
{
    Animal *a = [Dog new];
    [a test1];
    
    Animal *a2 = [Animal new];
    [a2 test1];
    
    Dog *a3 = [Dog new];
    [a3 test1];
    
    return 0;
}

/**
 1. 说说类              2. 作者               3. 账号
 * 文字内容             * 名称                 * 账号名称
 * 图片               * 生日                 * 账号密码
 * 发表时间             * 账号                 * 账号注册时间
 * 作者
 * 转发的说说
 * 评论数
 * 转发数
 * 点赞数*/
#import<Foundation/Foundation.h>
@interface user: NSObject

@property(nonatomic,retain) NSString *_username,*_password;
@property(nonatomic,retain) NSDate *_registerDate;

-(bool) isRegister:(NSString *)tString;//检查帐号是否注册过
-(bool) registerUser:(NSString *)tString andPassword (NSString *)tPassword;//服务器上注册帐号
@end
@implementation user
@synthesize username,password;
@synthesize registerDate;
-(bool) isRegister:(NSString *)tString//检查帐号是否注册过
{
    if(checkIsRegistered:tString)//checkIsRegistered为检查账号名是否被注册过的函数，没注册过返回true
    {
        return false;
    }
    else
    {
        return true;
    }
}
-(bool) registerUser:(NSString *)tString andPassword (NSString *)tPassword
{
    if(isRegister(*tString))
    {
        [self set_username:tString];
        [self set_password:tPassword];
        [self set_registerDate:[NSDate date]];
        return true;
    }
    else
    {
        return false;
    }
}
@end


@interface zuozhe : NSObject
@property(nonatomic,retain) NSString *_nickName;//
@property(nonatomic,retain) user *_user;//
@property(nonatomic,retain) NSDate *_birthDate;//
@end
@implementation zuozhe
@synthesize _nickName;
@synthesize _user;
@synthesize _birthDate;
@end


@interface shuoshuo : NSObject
@property(nonatomic,retain) NSString *_neirong;//说说的转发文字内容
@property(nonatomic,retain) Picture *_picture;//说说的图片
@property(nonatomic,retain) NSDate *_publishDate;//发表时间
@property(nonatomic,retain) zuozhe *_zuozhe;//作者
@property(nonatomic,retain) shuoshuo *_zhuan_shuoshuo;//转发的说说
@property(nonatomic,retain) int _pinglunshu;//评论数
@property(nonatomic,retain) int _zhuanfashu;//转发数
@property(nonatomic,retain) int _dianzanshu;//点赞数
@end
@implementation shuoshuo
@synthesize _neirong;
@synthesize _picture;
@synthesize _publishDate;
@synthesize _zuozhe;
@synthesize _zhuan_shuoshuo;
@synthesize _pinglunshu;
@synthesize _dianzanshu;
@synthesize _zhuanfashu;
(-id) init
{
    if(self = [super init])
    {
        _pinglunhu = 0;
        _zhuanfashu = 0;
        _dianzanshu = 0;
        _publishDate = [NSDate date];
    }
    return self;
}

@end

 //模拟场景：
user *Zhangsan = [[user alloc] init];
[Zhangsan registerUser:@"itcast",@"123456"];
    //张三在2007-9-8 17：56：34的时候， 注册了一个账号（名称：itcast， 密码：123456）
zuozhe *_Zhangsan = [[zuozhe alloc] init];
[_Zhangsan set_user:Zhangsan];
[_Zhangsan set_birthDate: @"1998-7-4 18:46:24"];
 //张三的生日是1998-7-4 18：46：24
shuoshuo *Zhang_shuoshuo = [[shuoshuo alloc] init];
[Zhang_shuoshuo set_zuozhe:_Zhangsan];
[Zhang_shuoshuo set_publishDate:@"2010-8-8 9:23:44"];
 //张三在2010-8-8 9：23：44的时候， 发布一条说说
[Zhang_shuoshuo set_neirong:@"今天心情不错"];
 //文字内容  @“今天心情不错”
[Zhang_shuoshuo set_picture:@"test.png"];
 //图片 @“test.png”
//发表时间是不是和创建的时间一样？publishDate;
 //发表时间
[Zhang_shuoshuo set_zuozhe = _Zhangsan];
 //作者
[Zhang_shuoshuo set_zhuan_shuoshuo = nil];
 //转发的说说
[Zhang_shuoshuo._dianzanshu = 100];
 //评论数 100
[Zhang_shuoshuo._zhuanfashu = 200];
 //转发数 290
[Zhang_shuoshuo._dianzanshu = 2000];
 //点赞数 2000

user *Lisi = [[user alloc] init];
[Lisi registerUser:@"lisitcast",@"654321"];
 //李四在2006-9-8 19：26：54的时候， 注册了一个账号（名称：lisiitcast， 密码：654321）
[zuozhe *_Lisi = [[zuozhe alloc] init];
[_Lisi set_user:Lisi];
[_Lisi set_birthDate:@"1999-9-6 14:16:28"];
 //李四的生日是1999-9-6 14：16：28
 shuoshuo *Lisi_shuoshuo = [[shuoshuo alloc] init];
 [Lisi_shuoshuo set_user:_Lisi];
 [Lisi_shuoshuo set_zhuan_shuoshuo:Zhang_shuoshuo];
 [Lisi_shuoshuo set_publishDate:@"2011-8-8 20:47:09"];
 //李四在2011-8-8 20：47：09的时候， 转发了张三之前发布的说说， 并且还附带了一句话：@“今天心情确实不错”*/

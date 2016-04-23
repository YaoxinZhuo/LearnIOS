/**
 1. 说说类
 * 文字内容
 * 图片
 * 发表时间
 * 作者
 * 转发的说说
 * 评论数
 * 转发数
 * 点赞数
 
 2. 作者
 * 名称
 * 生日
 * 账号
 
 3. 账号
 * 账号名称
 * 账号密码
 * 账号注册时间
 
 模拟场景：
 * 张三在2007-9-8 17：56：34的时候， 注册了一个账号（名称：itcast， 密码：123456）
 * 张三的生日是1998-7-4 18：46：24
 * 张三在2010-8-8 9：23：44的时候， 发布一条说说
 * 文字内容  @“今天心情不错”
 * 图片 @“test.png”
 * 发表时间
 * 作者
 * 转发的说说
 * 评论数 100
 * 转发数 290
 * 点赞数 2000
 
 * 李四在2006-9-8 19：26：54的时候， 注册了一个账号（名称：lisiitcast， 密码：654321）
 * 李四的生日是1999-9-6 14：16：28
 * 李四在2011-8-8 20：47：09的时候， 转发了张三之前发布的说说， 并且还附带了一句话：@“今天心情确实不错”
 */
@class CZAuthor;
@class CZStatus;
/**
 *  说说类
 */
@interface  CZStatus : NSObject
//文字内容
@property (nonatomic,copy) NSString *content;
//图片
@property (nonatomic,copy) NSString *picture;
// 发表时间
@property (nonatomic,copy) NSString *sendTime;
// 作者
@property (nonatomic,strong) CZAuthor *author;
// 被转发的说说
@property  (nonatomic,strong) CZStatus *relayStatus;
// 评论数
@property  (nonatomic,assign) NSInteger commentsNum;
// 转发数
@property  (nonatomic,assign) NSInteger relayNum;
// 点赞数
@property  (nonatomic,assign) NSInteger supportNum;
@end


/**
 *  作者类
 */
@class CZAccount;
@interface CZAuthor : NSObject
//名称
@property (nonatomic,copy) NSString *name;
//生日
@property (nonatomic,copy) NSString *birthDay;
//账号
@property (nonatomic,strong) CZAccount *account;
@end


/**账号类*/
@interface CZAccount : NSObject
// 账号名称
@property (nonatomic,copy) NSString *name;
// 账号密码
@property (nonatomic,copy) NSString *pwd;
// 账号注册时间
@property (nonatomic,copy) NSString *registerTime;
@end


@implementation CZStatus
@end

@implementation CZAuthor
@end

@implementation CZAccount
@end

int main(int argc, const char * argv[]) {
    //  李四
    CZAuthor *zhangSan = [[CZAuthor alloc] init];
    zhangSan.birthDay = @"1998-7-4 18：46：24";
    zhangSan.name = @"张三";
    //  张三注册账号
    CZAccount *zsAccount = [[CZAccount alloc] init];
    zsAccount.name = @"itcast";
    zsAccount.pwd = @"123";
    //  让账号成为张三的账号
    zhangSan.account =  zsAccount;
    
    //  张三发表说说
    CZStatus *zsStatus = [[CZStatus alloc] init];
    //  让说说成为张三的说说
    zsStatus.author = zhangSan;
    
    zsStatus.sendTime = @"2010-8-8 9：23：44";
    zsStatus.content = @"今天心情不错";
    zsStatus.picture = @"test.png";
    zsStatus.commentsNum = 100;
    zsStatus.relayNum = 290;
    zsStatus.supportNum = 2000;
    
    //  李四注册账号
    //  李四
    CZAuthor *liSi = [[CZAuthor alloc] init];
    liSi.name = @"李四";
    liSi.birthDay = @"1999-9-6 14:16:54";
    //  李四的账号
    CZAccount *account = [[CZAccount alloc] init];
    account.name = @"lisiitcast";
    account.pwd = @"654321";
    
    //  让账号成为李四的账号
    liSi.account = account;
    
    CZStatus *lisiStatus = [[CZStatus alloc] init];
    //  让说说成为李四的说说
    lisiStatus.author = liSi;
    lisiStatus.sendTime = @"2011-8-8 20：47：09";
    lisiStatus.relayStatus = zsStatus;
    lisiStatus.content = @"今天心情确实不错";
    
    
    
    return 0;
}
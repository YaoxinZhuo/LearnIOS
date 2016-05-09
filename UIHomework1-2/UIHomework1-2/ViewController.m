//
//  ViewController.m
//  UIHomework1-2
//
//  Created by YaoxinZhuo on 5/8/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *MyImage;
- (IBAction)Scartch:(id)sender;
- (IBAction)Pie:(id)sender;
- (IBAction)Fart:(id)sender;
- (IBAction)Eat:(id)sender;
- (IBAction)Drink:(id)sender;
- (IBAction)Cymbal:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *ScartchButton;
@property (weak, nonatomic) IBOutlet UIButton *PieButton;
@property (weak, nonatomic) IBOutlet UIButton *FartButton;
@property (weak, nonatomic) IBOutlet UIButton *EatButton;
@property (weak, nonatomic) IBOutlet UIButton *DrinkButton;
@property (weak, nonatomic) IBOutlet UIButton *CymbalButton;
@property NSString *plistPath;
@property NSDictionary *plistDictionary;
@property NSMutableArray *currentImages;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _plistPath = [[NSBundle mainBundle] pathForResource:@"tom" ofType:@"plist"];
    _plistDictionary = [NSDictionary dictionaryWithContentsOfFile:_plistPath];
    //随便拉了一个图初始化
    [_MyImage setImage:[UIImage imageNamed:@"cymbal_00"]];
    //_MyImageView = [[UIImageView alloc] initWithImage:_MyImage];
    [_ScartchButton setHidden:false];[_PieButton setHidden:false];
    [_FartButton setHidden:false];[_EatButton setHidden:false];
    [_DrinkButton setHidden:false];[_CymbalButton setHidden:false];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)myPlay:(NSString *)t
{
    _currentImages = nil;
    _currentImages = [[NSMutableArray alloc]init];
    NSMutableString *backString;
    NSMutableString *frontString = [t copy];
    int t2;
    t2 = [[_plistDictionary valueForKey:t] integerValue];
    //NSLog(@"%d",t2);
    for(int i = 0;i < (int)t2 ; i++ )
    {
        if(i < 10)
        {
            backString = [NSMutableString stringWithFormat:@"_0%d.jpg",i];
        }
        else
        {
            backString = [NSMutableString stringWithFormat:@"_%d.jpg",i];
        }
        //NSLog(@"%@",[frontString stringByAppendingString:backString]);
        [_currentImages addObject:[UIImage imageNamed:[frontString stringByAppendingString:backString]]];
    }
    _MyImage.animationImages = _currentImages;
    _MyImage.animationDuration = 3;
    _MyImage.animationRepeatCount = 1;
    [_MyImage startAnimating];
}

- (IBAction)Scartch:(id)sender {
    [self myPlay:@"scratch"];
}

- (IBAction)Pie:(id)sender {
    [self myPlay:@"pie"];
}

- (IBAction)Fart:(id)sender {
    [self myPlay:@"fart"];
}

- (IBAction)Eat:(id)sender {
    [self myPlay:@"eat"];
}

- (IBAction)Drink:(id)sender {
    [self myPlay:@"drink"];
}

- (IBAction)Cymbal:(id)sender {
    [self myPlay:@"cymbal"];
}
@end

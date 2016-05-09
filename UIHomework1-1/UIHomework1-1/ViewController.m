//
//  ViewController.m
//  UIHomework1-1
//
//  Created by YaoxinZhuo on 5/8/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *medium;
@property (strong, nonatomic) IBOutlet UILabel *up;
@property (strong, nonatomic) IBOutlet UILabel *down;
@property (weak, nonatomic) IBOutlet UIButton *leftButton;
@property (weak, nonatomic) IBOutlet UIButton *rightButton;
- (IBAction)leftClick:(id)sender;
- (IBAction)rightClick:(id)sender;
@property int index;
@property (nonatomic,strong) NSString *plistPath;
@property (nonatomic,strong) NSMutableArray *plist;
@end

@implementation ViewController
-(void)checkButtonColorAndAll
{
    NSDictionary *dict = [_plist objectAtIndex:_index-1];
    [_down setText:[dict objectForKey:@"desc"]];
    [_medium setImage:[UIImage imageNamed:[dict objectForKey:@"icon"]]];
    [_up setText:[NSString stringWithFormat:@"%d/5",_index]];
    if(_index == 1)
    {
        [self.leftButton setImage:[UIImage imageNamed:@"left_normal"] forState:UIControlStateNormal];
    }
    else
    {
        [self.leftButton setImage:[UIImage imageNamed:@"left_highlighted"]forState:UIControlStateNormal];
    }
    if(_index == 5)
    {
        [self.rightButton setImage:[UIImage imageNamed:@"right_normal"] forState:UIControlStateNormal];
    }
    else
    {
        [self.rightButton setImage:[UIImage imageNamed:@"right_highlighted"]forState:UIControlStateNormal];
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[self medium]setImage:[UIImage imageNamed:@"111111"]];
    _index = 1;
    [_up setText:[NSString stringWithFormat:@"%d/5",_index]];
    _plistPath = [[NSBundle mainBundle] pathForResource:@"imageData" ofType:@"plist"];
    _plist = [[NSMutableArray alloc] initWithContentsOfFile:_plistPath];
    [self checkButtonColorAndAll];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)leftClick:(id)sender {
 
    if(_index == 1)
    {
        ;
    }
    else
    {
        _index -= 1;
    }
    [self checkButtonColorAndAll];
}

- (IBAction)rightClick:(id)sender {
    if(_index == 5)
    {
        ;
    }
    else
    {
        _index += 1;
    }
    [self checkButtonColorAndAll];
}
@end

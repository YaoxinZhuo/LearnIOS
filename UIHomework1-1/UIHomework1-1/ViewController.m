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
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[self medium]setImage:[UIImage imageNamed:@"111111"]];
    _index = 1;
    
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
        switch (_index) {
            case 2:
                _index -= 1;
                [_medium setImage:[UIImage imageNamed:@"111111"]];
                break;
            case 3:
                _index -= 1;
                [_medium setImage:[UIImage imageNamed:@"222222"]];
                break;
            case 4:
                _index -= 1;
                [_medium setImage:[UIImage imageNamed:@"333333"]];
                break;
            case 5:
                _index -= 1;
                [_medium setImage:[UIImage imageNamed:@"444444"]];
                break;
            default:
                break;
        }
    }
}

- (IBAction)rightClick:(id)sender {
    if(_index == 5)
    {
        ;
    }
    else
    {
        switch (_index) {
            case 1:
                _index += 1;
                [_medium setImage:[UIImage imageNamed:@"222222"]];
                break;
            case 2:
                _index += 1;
                [_medium setImage:[UIImage imageNamed:@"333333"]];
                break;
            case 3:
                _index += 1;
                [_medium setImage:[UIImage imageNamed:@"444444"]];
                break;
            case 4:
                _index += 1;
                [_medium setImage:[UIImage imageNamed:@"555555"]];
                break;
            default:
                break;
        }
    }
}
@end

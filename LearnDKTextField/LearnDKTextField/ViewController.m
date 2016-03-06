//
//  ViewController.m
//  LearnDKTextField
//
//  Created by YaoxinZhuo on 3/6/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import "ViewController.h"
#import "DKTextField.h"
@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *output;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)switchChanged:(UISwitch *)sender {
    self.output.secureTextEntry = sender.on;
}
@end

//
//  ViewController.m
//  LoginTest
//
//  Created by YaoxinZhuo on 3/6/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController
@synthesize userName;
@synthesize passWord;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Login:(id)sender {
    [sender resignFirstResponder];
    [self.passWord resignFirstResponder];
    [self.userName resignFirstResponder];
}
@end

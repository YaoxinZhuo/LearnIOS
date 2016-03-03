//
//  ViewController.m
//  TrySingleViewApplication
//
//  Created by YaoxinZhuo on 3/3/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.userOutput = nil;
    self.userInput = nil;
    [self setUserInput:nil];
    [self setUserOutput:nil];
    [self viewDidUnload];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@synthesize userInput;
@synthesize userOutput;

@end

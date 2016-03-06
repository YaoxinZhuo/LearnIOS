//
//  ViewController.m
//  LearnDKTextField
//
//  Created by YaoxinZhuo on 3/5/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import "ViewController.h"
#import "DKTextField.h"
@interface ViewController ()
@property (nonatomic,weak) IBOutlet DKTextField *textField;

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

- (IBAction)sender:(id)sender {
    self.textField.secureTextEntry = sende ;
}
@end

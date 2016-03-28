//
//  ViewController.m
//  Switch_Slider_SegmentedControlSample
//
//  Created by YaoxinZhuo on 3/28/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)switchValueChanged:(id)sender
{
    UISwitch *withSwitch = (UISwitch *)sender;
    BOOL setting = withSwitch.isOn;
    [self.LeftSwitch setOn:setting animated:YES];
    [self.RightSwitch setOn:setting animated:YES];
}

-(IBAction)sliderValueChanged:(id)sender
{
    UISlider *slider = (UISlider *)sender;
    int progressAsInt = (int)(slider.value);
    NSString *newText = [[NSString alloc]initWithFormat:@"%d",progressAsInt];
    self.SliderValue.text = newText;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

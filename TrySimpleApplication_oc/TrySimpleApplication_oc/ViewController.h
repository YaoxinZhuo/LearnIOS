//
//  ViewController.h
//  TrySimpleApplication_oc
//
//  Created by YaoxinZhuo on 3/4/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *userOutput;

@property (strong, nonatomic) IBOutlet UITextField *userInput;


- (IBAction)setOutput:(id)sender;

@end


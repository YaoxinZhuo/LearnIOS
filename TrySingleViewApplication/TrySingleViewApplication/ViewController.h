//
//  ViewController.h
//  TrySingleViewApplication
//
//  Created by YaoxinZhuo on 3/3/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong,nonatomic) IBOutlet UILabel *userOutput;
@property (strong,nonatomic) IBOutlet UITextField *userInput;

- (IBAction)setOutput:(id)sender;

@end


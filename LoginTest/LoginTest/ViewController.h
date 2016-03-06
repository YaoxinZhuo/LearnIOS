//
//  ViewController.h
//  LoginTest
//
//  Created by YaoxinZhuo on 3/6/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *userName;

@property (strong, nonatomic) IBOutlet UITextField *passWord;
- (IBAction)Login:(id)sender;

@end


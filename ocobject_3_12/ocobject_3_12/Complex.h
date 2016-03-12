//
//  Complex.h
//  ocobject_3_12
//
//  Created by YaoxinZhuo on 3/12/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject
@property double real,imaginary;
-(void) print;
-(void) setReal:(double)a andImaginary:(double) b;
-(Complex *) add:(Complex *) f;
@end

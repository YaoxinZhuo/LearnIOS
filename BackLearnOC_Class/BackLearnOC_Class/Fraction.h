//
//  Fraction.h
//  BackLearnOC_Class
//
//  Created by YaoxinZhuo on 3/31/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
{
    int numerator;
    int denominator;
}

-(void) print;
-(double) converttoNum;
-(void) setTo:(int) n over:(int) d;
-(Fraction *)initWith:(int) n over:(int) d;
/*+(Fraction *) allocF;
+(int) count;*/

@end

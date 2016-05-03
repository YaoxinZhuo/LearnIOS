//
//  PlayingCard.h
//  Matchismo
//
//  Created by YaoxinZhuo on 5/1/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import "Card.h"
@interface PlayingCard:Card
@property (nonatomic,strong) NSString *suit;
@property (nonatomic,assign) NSUInteger rank;//此处有过修改，NSUinteger is a typedef of unsigned long, so it couldn't be a object (to use strong).
+(NSArray *)validsuits;
+(NSArray *)rankStrings;
+(NSUInteger)maxRank;
@end
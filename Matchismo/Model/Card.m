//
//  Card.m
//  Matchismo
//
//  Created by YaoxinZhuo on 5/1/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import "Card.h"
@interface Card()
@end
@implementation Card
-(int)match:(NSArray*)othersCards
{
    int score = 0;
    for(Card *card in othersCards)
    {
        if([card.contents isEqualToString:self.contents])
        {
            score = 1;
        }
    }
    return score;
}
@end
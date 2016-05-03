//
//  PlayingCardDeck.m
//  Matchismo
//
//  Created by YaoxinZhuo on 5/1/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"
@implementation PlayingCardDeck

-(instancetype) init
{
    self = [super init];
    
    if(self)
    {
        for(NSString *suit in [PlayingCard validsuits])
        {
            for(NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++)
            {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }
    
    return self;
}

-(PlayingCard *) drawRandomCard
{
    Card* card = [super drawRandomCard];
    if ([card isKindOfClass:[PlayingCard class]]){
        PlayingCard* playingCard = (PlayingCard*) card;
        return playingCard;
    }
    else{
        return nil;
    }
}
@end
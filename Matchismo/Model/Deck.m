//
//  Deck.m
//  Matchismo
//
//  Created by YaoxinZhuo on 5/1/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import "Deck.h"
@interface Deck()
@property (nonatomic,strong) NSMutableArray *cards;
@end

@implementation Deck

-(NSMutableArray *)cards
{
    if(!_cards)
    {
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}
- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if(atTop)
    {
        [self.cards insertObject:card atIndex:0];
    }
    else
    {
        [self.cards addObject:card];
    }
}
- (void)addCard:(Card *)card
{
    [self addCard:card atTop:NO];
}

- (Card *)drawRandomCard
{
    Card *drawRandomCard = nil;
    if([self.cards count])
    {
        unsigned index = arc4random() % [self.cards count];
        drawRandomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];//a small difference place
    }
    return drawRandomCard;
}
@end
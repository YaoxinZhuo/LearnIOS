//
//  PlayingCardDeck.h
//  Matchismo
//
//  Created by YaoxinZhuo on 5/1/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import "Deck.h"
#import "PlayingCard.h"

@interface PlayingCardDeck : Deck
-(instancetype) init;
-(PlayingCard *) drawRandomCard;

@end
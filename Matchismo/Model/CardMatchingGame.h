//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by YaoxinZhuo on 5/3/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
#import "Card.h"

@interface CardMatchingGame : NSObject
-(instancetype)initWithCardCount:(NSUInteger)
                 count usingDeck:(Deck *)deck;

-(void)chooseCardAtIndex:(NSUInteger)index;
-(Card *)cardAtIndex:(NSUInteger)index;

@property (nonatomic,readonly)NSInteger score;
@end

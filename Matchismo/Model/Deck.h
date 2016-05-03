//
//  Deck.h
//  Matchismo
//
//  Created by YaoxinZhuo on 5/1/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import<Foundation/Foundation.h>
#import "Card.h"
@interface Deck:NSObject
- (void)addCard:(Card *)card atTop:(BOOL) atTop;
- (void)addCard:(Card *)card;
- (Card *)drawRandomCard;
@end
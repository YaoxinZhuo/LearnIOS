//Card.h
#import<Foundation/Foundation.h>
@interface Card:NSObject
@property (nonatomic,strong) NSString *contents;
@property (nonatomic,getter=isChosen) BOOL chosen;
@property (nonatomic,setter=isMatched) BOOL matched;
@end
-(int)match:(NSArray*)othersCards;
//Card.m
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
//Deck.h
#import<Foundation/Foundation.h>
#import "Card.h"
@interface Deck:NSObject
- (void)addCard:(Card *)card atTop:(BOOL) atTop;
- (void)addCard:(Card *)card;
- (Card *)drawRandomCard;
@end
//Deck.m 
#import "Deck.h"
@interface Deck:NSObject()
@property (nonatomic,strong) NSMutableArrsy *cards;
@end
@implementation Deck
-(NSMutableArrsy *)Card
{
	if(!_cards)
	{
		_cards = [[NSMutableArrsy alloc] init];
	}
	return _cards;
}
- (void)addCard:(Card *)card atTop"(BOOL)atTop
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
        [self.cards removeObjectiveAtIndex:index];
    }
    return drawRandomCard;
}
@end
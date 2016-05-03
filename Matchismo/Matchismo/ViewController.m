//
//  ViewController.m
//  Matchismo
//
//  Created by YaoxinZhuo on 5/1/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCard.h"
#import "PlayingCardDeck.h"
#import "Deck.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (nonatomic) PlayingCardDeck* mycarddeck;
@property (nonatomic,strong) Deck *deck;
@end

@implementation ViewController

-(Deck *)deck
{
    if(!_deck)
    {
        _deck = [self createDeck];
    }
    return _deck;
}

-(Deck *)createDeck
{
    return [[PlayingCardDeck alloc] init];
}

-(void)viewDidLoad
{
    _mycarddeck = [[PlayingCardDeck alloc] init];
}

-(void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"翻牌次数:%d",self.flipCount];
}

- (IBAction)touchCardButton:(id)sender
{
    if([[sender currentTitle ] length])
    {
        //[sender setBackgroundColor:[UIColor whiteColor]];
        [sender setBackgroundImage:[UIImage imageNamed:@"cardBack"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
    else
    {
        Card *card = [self.deck drawRandomCard];
        if(card)
        {
        
            [sender setBackgroundImage:[UIImage imageNamed:@"cardFront"]
                          forState:UIControlStateNormal];
        /*我的方法1
         NSString *t1 = [[PlayingCard validsuits] objectAtIndex:arc4random()%4];
        NSString *t2 = [[PlayingCard rankStrings] objectAtIndex:arc4random()%13+1];*/
        /*魔改方法2
        NSMutableString *t1 = [[NSMutableString alloc] initWithString:[[PlayingCard rankStrings] objectAtIndex:arc4random()%13+1]];
        [t1 appendString:[[PlayingCard validsuits] objectAtIndex:arc4random()%4]];
        PlsayingCard *t = [self.mycarddeck drawRandomCard];
        NSString *suit = [t contents];*/
            [sender setTitle:card.contents forState:UIControlStateNormal];
            self.flipCount++;
        }
    }
}

@end

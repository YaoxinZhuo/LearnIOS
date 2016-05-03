//
//  PlayingCard.m
//  Matchismo
//
//  Created by YaoxinZhuo on 5/1/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard
@synthesize suit = _suit;

+(NSArray *)validsuits
{
    return @[@"♠️",@"♦️",@"♥️",@"♣️"];
}
+(NSArray *)rankStrings
{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",
             @"8",@"9",@"10",@"J",@"Q",@"K"];
}
+(NSUInteger)maxRank//maxRank = 14-1 = 13 (K).
{
    return [[self rankStrings] count] -1;
}

-(NSString *)contents
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}
-(void) setSuit:(NSString *)suit
{
    if([[PlayingCard validsuits] containsObject:suit])
    {
        _suit = suit;
    }
}
-(NSString *)suit
{
    return _suit ? _suit:@"?";
}
-(void) setRank:(NSUInteger)rank
{
    if(rank <= [PlayingCard maxRank])
    {
        _rank = rank;
    }
}
@end
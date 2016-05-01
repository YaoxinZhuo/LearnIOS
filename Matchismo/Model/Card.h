//
//  Card.h
//  Matchismo
//
//  Created by YaoxinZhuo on 5/1/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

#import<Foundation/Foundation.h>
@interface Card:NSObject
@property (nonatomic,strong) NSString *contents;
@property (nonatomic,getter=isChosen) BOOL chosen;
@property (nonatomic,setter=isMatched:) BOOL matched;
-(int)match:(NSArray*)othersCards;
@end

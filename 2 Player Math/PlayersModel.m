//
//  PlayersModel.m
//  2 Player Math
//
//  Created by David Guichon on 2017-03-13.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "PlayersModel.h"
#import "QuestionModel.h"

@implementation PlayersModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _player1Lives = 3;
        _player2Lives = 3;
    }
    return self;
}

-(void)player1CorrectAnswer{
    self.player1Score = self.player1Score + 50;
}
-(void)player1IncorrectAnswer{
    self.player1Lives --;
}


-(void)player2CorrectAnswer{
    self.player2Score = self.player2Score + 50;
}
-(void)player2IncorrectAnswer{
    self.player2Lives --;
}



@end

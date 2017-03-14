//
//  QuestionModel.m
//  2 Player Math
//
//  Created by David Guichon on 2017-03-13.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "QuestionModel.h"
#import "PlayersModel.h"

@interface QuestionModel ()

@property (nonatomic) PlayersModel *playersModel;

@end

@implementation QuestionModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.playersModel = [[PlayersModel alloc] init];
        self.whichPlayer = NO;
        self.question = [[NSString alloc] init];
        [self newQuestion];
    }
    return self;
}

-(NSString *)fourOutcomes:(NSString *)incomingAnswer{
    NSInteger intIncomingAnswer = [incomingAnswer integerValue];
    if (self.whichPlayer == NO && intIncomingAnswer == self.answer){  //PLAYER 1 IS CORRECT
        [self.playersModel player1CorrectAnswer];
    }
    else if (self.whichPlayer == NO && intIncomingAnswer != self.answer){  //PLAYER 1 IS INCORRECT
        [self.playersModel player1IncorrectAnswer];
    }
    if (self.whichPlayer == YES && intIncomingAnswer == self.answer){  //PLAYER 2 IS CORRECT
        [self.playersModel player2CorrectAnswer];
    }
    else if (self.whichPlayer == YES && intIncomingAnswer != self.answer){  //PLAYER 2 IS INCORRECT
        [self.playersModel player2IncorrectAnswer];
    }
    [self changePlayer];
    
    NSString *playerNumberAndQuestion = [self newQuestion];
    return playerNumberAndQuestion;
}


-(void)changePlayer{
    if (self.whichPlayer == YES){
        self.whichPlayer = NO;
    } else {
        self.whichPlayer = YES;
    }
}


-(NSString *)newQuestion{
    [self generateNewValuesAndQuestionAnswer];
    NSString *playerNumberAndQuestion = [self returnPlayerNumberAndQuestion];
    return playerNumberAndQuestion;
}


-(void)generateNewValuesAndQuestionAnswer{
    self.leftValue = arc4random_uniform(20)+1;
    self.rightValue = arc4random_uniform(20)+1;
    self.answer = self.leftValue + self.rightValue;
    self.question = [NSString stringWithFormat:@"What is %li + %li ?", (long)self.leftValue, (long)self.rightValue];
}


-(PlayersModel *)returnPlayersModel{
    return self.playersModel;
}


-(NSString *)returnPlayerNumberAndQuestion{
    if (self.whichPlayer == NO){
        NSString *returnThis = [NSString stringWithFormat:@"Player 1: %@", self.question];
        return returnThis;
    } else {
        NSString *returnThis = [NSString stringWithFormat:@"Player 2: %@", self.question];
        return returnThis;
    }
}


@end










//
//  PlayersModel.h
//  2 Player Math
//
//  Created by David Guichon on 2017-03-13.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <Foundation/Foundation.h>
@class QuestionModel;;

@interface PlayersModel : NSObject

@property (nonatomic) int player1Lives;
@property (nonatomic) int player2Lives;

@property (nonatomic) int player1Score;
@property (nonatomic) int player2Score;

-(void)player1CorrectAnswer;
-(void)player1IncorrectAnswer;

-(void)player2CorrectAnswer;
-(void)player2IncorrectAnswer;

@end

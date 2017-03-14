//
//  QuestionModel.h
//  2 Player Math
//
//  Created by David Guichon on 2017-03-13.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <Foundation/Foundation.h>
@class PlayersModel;

@interface QuestionModel : NSObject

@property (nonatomic) NSInteger leftValue;
@property (nonatomic) NSInteger rightValue;

@property (nonatomic) NSInteger answer;
@property (nonatomic) NSString *question;

@property (nonatomic) BOOL whichPlayer;



-(NSString *)newQuestion;

-(NSString *)returnPlayerNumberAndQuestion;

-(PlayersModel *)returnPlayersModel;

-(NSString *)fourOutcomes:(NSString *)incomingAnswer;
-(void)changePlayer;

@end

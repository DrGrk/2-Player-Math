//
//  ViewController.h
//  2 Player Math
//
//  Created by David Guichon on 2017-03-13.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <UIKit/UIKit.h>

@class QuestionModel;
@class PlayersModel;

@interface ViewController : UIViewController

//Property To Send Answer To the Question Model
@property (nonatomic) NSString *incomingAnswer;

@property (weak, nonatomic) IBOutlet UILabel *playerNumberAndQuestion;

@property (weak, nonatomic) IBOutlet UILabel *player1Score;
@property (weak, nonatomic) IBOutlet UILabel *player2Score;

@property (weak, nonatomic) IBOutlet UILabel *player1Lives;
@property (weak, nonatomic) IBOutlet UILabel *player2Lives;

@property (weak, nonatomic) IBOutlet UILabel *potentialAnswer;


-(void)updatePlayerStats;
-(void)updatePlayerScore;
-(void)updatePlayerLives;




- (IBAction)number1:(id)sender;

- (IBAction)number2:(id)sender;

- (IBAction)number3:(id)sender;

- (IBAction)number4:(id)sender;

- (IBAction)number5:(id)sender;

- (IBAction)number6:(id)sender;

- (IBAction)number7:(id)sender;

- (IBAction)number8:(id)sender;

- (IBAction)number9:(id)sender;

- (IBAction)number0:(id)sender;

- (IBAction)pressedEnter:(id)sender;

- (IBAction)pressedClear:(id)sender;


@end


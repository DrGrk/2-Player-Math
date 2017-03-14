//
//  ViewController.m
//  2 Player Math
//
//  Created by David Guichon on 2017-03-13.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "ViewController.h"
#import "QuestionModel.h"
#import "PlayersModel.h"

@interface ViewController ()

//Property Delegate
@property (nonatomic) QuestionModel *questionModel;
@property (nonatomic) PlayersModel *playerModel;

@end

@implementation ViewController


- (IBAction)pressedEnter:(id)sender{
    self.playerNumberAndQuestion.text = [self.questionModel fourOutcomes:self.incomingAnswer];
    [self updatePlayerStats];
    [self resetIncomingAnswer];
    
}

- (IBAction)pressedClear:(id)sender {
    [self resetIncomingAnswer];
}

-(void)updatePlayerStats{
    [self updatePlayerScore];
    [self updatePlayerLives];
}


-(void)updatePlayerLives{
    NSString *player1TextLives = [NSString stringWithFormat:@"%i", self.playerModel.player1Lives];
    self.player1Lives.text = player1TextLives;
    NSString *player2TextLives = [NSString stringWithFormat:@"%i", self.playerModel.player2Lives];
    self.player2Lives.text = player2TextLives;
}


-(void)updatePlayerScore{
    NSString *player1TextScore = [NSString stringWithFormat:@"%i", self.playerModel.player1Score];
    self.player1Score.text = player1TextScore;
    
    NSString *player2TextScore = [NSString stringWithFormat:@"%i", self.playerModel.player2Score];
    self.player2Score.text = player2TextScore;
}




- (void)resetIncomingAnswer{
    self.incomingAnswer = [NSString stringWithFormat:@""];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _questionModel = [[QuestionModel alloc] init];
    self.playerModel = [self.questionModel returnPlayersModel];
    self.playerNumberAndQuestion.text = [self.questionModel returnPlayerNumberAndQuestion];
    self.incomingAnswer = @"";
    [self updatePlayerStats];
}


-(void)setPotentialAnswer{
    self.potentialAnswer.text = self.incomingAnswer;
}

- (IBAction)number1:(id)sender {
    self.incomingAnswer = [NSString stringWithFormat:@"%@1",self.incomingAnswer];
    [self setPotentialAnswer];
}

- (IBAction)number2:(id)sender {
    self.incomingAnswer = [self.incomingAnswer stringByAppendingString:@"2"];
    [self setPotentialAnswer];
}

- (IBAction)number3:(id)sender {
    self.incomingAnswer = [NSString stringWithFormat:@"%@3",self.incomingAnswer];
    [self setPotentialAnswer];
}

- (IBAction)number4:(id)sender {
    self.incomingAnswer = [NSString stringWithFormat:@"%@4",self.incomingAnswer];
    [self setPotentialAnswer];
}

- (IBAction)number5:(id)sender {
    self.incomingAnswer = [NSString stringWithFormat:@"%@5",self.incomingAnswer];
    [self setPotentialAnswer];
}

- (IBAction)number6:(id)sender {
    self.incomingAnswer = [NSString stringWithFormat:@"%@6",self.incomingAnswer];
    [self setPotentialAnswer];
}

- (IBAction)number7:(id)sender {
    self.incomingAnswer = [NSString stringWithFormat:@"%@7",self.incomingAnswer];
    [self setPotentialAnswer];
}

- (IBAction)number8:(id)sender {
    self.incomingAnswer = [NSString stringWithFormat:@"%@8",self.incomingAnswer];
    [self setPotentialAnswer];
}

- (IBAction)number9:(id)sender {
    self.incomingAnswer = [NSString stringWithFormat:@"%@9",self.incomingAnswer];
    [self setPotentialAnswer];
}

- (IBAction)number0:(id)sender {
    self.incomingAnswer = [NSString stringWithFormat:@"%@0",self.incomingAnswer];
    [self setPotentialAnswer];
}

@end















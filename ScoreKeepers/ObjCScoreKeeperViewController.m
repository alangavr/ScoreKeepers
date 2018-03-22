//
//  ObjCScoreKeeperViewController.m
//  ScoreKeepers
//
//  Created by CSSE Department on 3/20/18.
//  Copyright © 2018 Rose-Hulman. All rights reserved.
//

#import "ObjCScoreKeeperViewController.h"

@implementation ObjCScoreKeeperViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self clearPlayerEditTextFields];
    [self clearPlayerScoreView];
    
    self.roundLabel.text = @"0";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressedEnterRound:(id) sender {
    
    //increment round
    NSString* textInRoundLabel = self.roundLabel.text;
    int currentRound = [textInRoundLabel intValue];
    self.roundLabel.text = [NSString stringWithFormat: @"%d", currentRound + 1];
    
    //get round scores
    int player1RoundScore = [self.player1ScoreTextField.text intValue];
    int player2RoundScore = [self.player2ScoreTextField.text intValue];
    int player3RoundScore = [self.player3ScoreTextField.text intValue];
    int player4RoundScore = [self.player4ScoreTextField.text intValue];
    
    self.player1ScoreTextView.text = [NSString stringWithFormat:@"%d\n%@",player1RoundScore, self.player1ScoreTextView.text];
    self.player2ScoreTextView.text = [NSString stringWithFormat:@"%d\n%@",player2RoundScore, self.player2ScoreTextView.text];
    self.player3ScoreTextView.text = [NSString stringWithFormat:@"%d\n%@",player3RoundScore, self.player3ScoreTextView.text];
    self.player4ScoreTextView.text = [NSString stringWithFormat:@"%d\n%@",player4RoundScore, self.player4ScoreTextView.text];
    
    [self clearPlayerEditTextFields];
}

- (void)clearPlayerEditTextFields {
    self.player1ScoreTextField.text = @"";
    self.player2ScoreTextField.text = @"";
    self.player3ScoreTextField.text = @"";
    self.player4ScoreTextField.text = @"";
}

-(void)clearPlayerScoreView {
    self.player1ScoreTextView.text = @"";
    self.player2ScoreTextView.text = @"";
    self.player3ScoreTextView.text = @"";
    self.player4ScoreTextView.text = @"";
}

- (IBAction)pressedNewGame:(id)sender {
    
    [self clearPlayerEditTextFields];
    [self clearPlayerScoreView];
    self.roundLabel.text = @"0";
}

@end;

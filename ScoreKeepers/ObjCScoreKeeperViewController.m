//
//  ObjCScoreKeeperViewController.m
//  ScoreKeepers
//
//  Created by CSSE Department on 3/20/18.
//  Copyright © 2018 Rose-Hulman. All rights reserved.
//

#import "ObjCScoreKeeperViewController.h"

@implementation ObjCScoreKeeperViewController

//NSString* textInTextField = self.editTextField.text;
//int textAsInt = [textInTextField intValue];


- (void)viewDidLoad {
    [super viewDidLoad];
    //NSLog(@"view did load");
    self.player1ScoreTextView.text = @"";
    self.player2ScoreTextView.text = @"";
    self.player3ScoreTextView.text = @"";
    self.player4ScoreTextView.text = @"";
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressedEnterRound:(id) sender {
    NSLog(@"pressed enter round");
}

- (IBAction)pressedNewGame:(id)sender {
    NSLog(@"pressend New Game");
}

@end;

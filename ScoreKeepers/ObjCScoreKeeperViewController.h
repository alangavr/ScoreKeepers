//
//  ObjCScoreKeeperViewController.h
//  ScoreKeepers
//
//  Created by CSSE Department on 3/20/18.
//  Copyright © 2018 Rose-Hulman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ObjCScoreKeeperViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel* roundLabel;

@property (weak, nonatomic) IBOutlet UITextField* player1ScoreTextField;
@property (weak, nonatomic) IBOutlet UITextField* player2ScoreTextField;
@property (weak, nonatomic) IBOutlet UITextField* player3ScoreTextField;
@property (weak, nonatomic) IBOutlet UITextField* player4ScoreTextField;

@property (weak, nonatomic) IBOutlet UITextView* player1ScoreTextView;
@property (weak, nonatomic) IBOutlet UITextView* player2ScoreTextView;
@property (weak, nonatomic) IBOutlet UITextView* player3ScoreTextView;
@property (weak, nonatomic) IBOutlet UITextView* player4ScoreTextView;


- (IBAction)pressedEnterRound:(id)sender;

- (IBAction)pressedNewGame:(id)sender;



@end

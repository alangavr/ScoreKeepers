//
//  ViewController.swift
//  ScoreKeepers
//
//  Created by CSSE Department on 3/11/18.
//  Copyright © 2018 Rose-Hulman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var roundLabel: UILabel!
    
    @IBAction func pressedNewGasme(_ sender: Any) {
        resetGame()
    }
    
    @IBAction func pressedEnterRound(_ sender: Any) {
        enterScores()
    }
    
    @IBOutlet weak var player1ScoreTextField: UITextField!
    @IBOutlet weak var player2ScoreTextField: UITextField!
    @IBOutlet weak var player3ScoreTextField: UITextField!
    @IBOutlet weak var player4ScoreTextField: UITextField!
    
    @IBOutlet weak var player1ScoreTextView: UITextView!
    @IBOutlet weak var player2ScoreTextView: UITextView!
    @IBOutlet weak var player3ScoreTextView: UITextView!
    @IBOutlet weak var player4ScoreTextView: UITextView!
    
    var roundNumber = 1
    var playerScores = [0,0,0,0]
    var scoreTextFields = [UITextField()]
    var scoreListTextViews = [UITextView()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreTextFields = [player1ScoreTextField, player2ScoreTextField, player3ScoreTextField, player4ScoreTextField]
        scoreListTextViews = [player1ScoreTextView, player2ScoreTextView, player3ScoreTextView, player4ScoreTextView]
        //resetGame()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func resetGame() {
        print("reset game pressed")
        roundNumber = 1
        roundLabel.text = "Round \(roundNumber)"
        for i in 0..<4{
            playerScores[i] = 0
            scoreTextFields[i].text = ""
            scoreListTextViews[i].text = ""
        }
    }
    
    func enterScores() {
        roundNumber += 1
        roundLabel.text = "Round \(roundNumber)"
        for i in 0..<4{
            if let score = Int(scoreTextFields[i].text!){
                playerScores[i] += score
            }
            scoreListTextViews[i].text = scoreListTextViews[i].text == "" ? "\(playerScores[i])" : "\(scoreListTextViews[i].text!)\n\(playerScores[i])"
            scoreListTextViews[i].textAlignment = .center
            scoreTextFields[i].text = ""
            scoreTextFields[i].textAlignment = .center
        }
        self.view.endEditing(true)
        
    }


}


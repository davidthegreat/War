//
//  ViewController.swift
//  War
//
//  Created by Macbook Air on 9/26/16.
//  Copyright © 2016 David Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var enemyScore: UILabel!
    var playerScoreTotal = 0
    var enemyScoreTotal = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: AnyObject) {
        
        // Randomize a number for the first imageview
        let firstRandomNumber = arc4random_uniform(13) + 1
        
        //construct a string with random number
        let firstCardString:String = String(format: "card%i", firstRandomNumber)
        let secondRandomNumber = arc4random_uniform(13) + 1
        
        let secondCardString:String = String(format: "card%i", secondRandomNumber)
        
        
        
        //Set the first card image view to the assest corresponding to the randomized number
        self.firstCardImageView.image = UIImage(named: firstCardString)
        
        self.secondCardImageView.image = UIImage(named: secondCardString)
        
        
        //Determine the higher card
        if firstRandomNumber > secondRandomNumber{
            //TODO:first card is larger
            playerScoreTotal += 1
            self.playerScore.text = String(playerScoreTotal)
        }
        else if firstRandomNumber == secondRandomNumber {
            //TODO: numbers are equal
        }
        else{
            //TODO: second card is larger
            enemyScoreTotal += 1
            self.enemyScore.text = String(enemyScoreTotal)
        }
    }

}


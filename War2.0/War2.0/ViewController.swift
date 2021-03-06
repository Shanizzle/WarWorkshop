//
//  ViewController.swift
//  War2.0
//
//  Created by Ken Ortego on 10/18/16.
//  Copyright © 2016 Ken Ortego. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    var rightScore = 0
    
    
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var rightScoreLabel: UILabel!
    var leftScore = 0
    
    var cardNames = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func dealTapped(_ sender: AnyObject) {
        
       let leftNumber = Int(arc4random_uniform(13))
       let rightNumber = Int(arc4random_uniform(13))
        
        
        
        leftImageView.image = UIImage(named: cardNames[leftNumber])
        rightImageView.image = UIImage(named: cardNames[rightNumber])
        
        if leftNumber > rightNumber {
            
            leftScore  += 1
            
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber == rightNumber {
            
            
        }
        else {
            
            rightScore += 1
            
            rightScoreLabel.text = String(rightScore)
            
        }
        
        
            
            
        
        
    }
}


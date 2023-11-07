 //
//  ViewController.swift
//  Section4_Dicee_App
//
//  Created by Musti on 10.09.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber = 0
    var rightDiceNumber = 5
    
    /*override func viewDidLoad() {
        super.viewDidLoad()
        
        /*diceImageView1.image = UIImage(imageLiteralResourceName: "DiceSix")
        //Who          What    Value
        diceImageView1.alpha = 1
        
        diceImageView2.image = UIImage(imageLiteralResourceName: "DiceTwo")
        diceImageView2.alpha = 1
         */
        
        
    }*/

    @IBAction func rollButtonPressed(_ sender: Any) {
        /*diceImageView1.image = UIImage(imageLiteralResourceName: "DiceFour")
        diceImageView2.image = UIImage(imageLiteralResourceName: "DiceFour")
         */
        
        var diceArray = [
            UIImage(imageLiteralResourceName: "DiceOne"),
            UIImage(imageLiteralResourceName: "DiceTwo"),
            UIImage(imageLiteralResourceName: "DiceThree"),
            UIImage(imageLiteralResourceName: "DiceFour"),
            UIImage(imageLiteralResourceName: "DiceFive"),
            UIImage(imageLiteralResourceName: "DiceSix"),
        
        ]
        
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
        
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        
        leftDiceNumber += 1
        rightDiceNumber -= 1
        
    }
    
}


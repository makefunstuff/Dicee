//
//  ViewController.swift
//  Dicee
//
//  Created by Juri Plugatariov on 15/06/2018.
//  Copyright © 2018 Juri Plugatariov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var leftDice: UIImageView!
    @IBOutlet weak var rightDice: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }

    @IBAction func rollDice(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func setRandomDice(diceImage: UIImageView, index: Int) {
        diceImage.image = UIImage(named: self.diceArray[index])
    }
    
    func updateDiceImages() {
        for imageView in [self.leftDice, self.rightDice] {
            let index = Int.random(in: 1 ..< 6)
            
            setRandomDice(diceImage: imageView!, index: index)
        }
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}


//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    //Constants:
    
    var storyLineNumber = 0
    
    let example = Story(title: "You see a fork in the road.",
                        choice1: "Take a left.",
                        choice2: "Take a right.")
    let storyArray = [
        Story(title: "You see a fork in the road.", choice1: "Take a left.",
        choice2: "Take a right."),
        Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
        Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        //Optional line
        guard storyLineNumber == 0 else {return}
        
        switch sender.tag {
        case 0:
            //choice 1
            storyLineNumber = 1
        case 1:
            //choice 2
            storyLineNumber = 2
        default:
            fatalError("Button tag is wrong.")
        }
        updateUI()
    }
    
    func updateUI() {
        
        storyLabel.text = storyArray[storyLineNumber].title
        choice1Button.setTitle(storyArray[storyLineNumber].choice1, for: .normal)
        choice2Button.setTitle(storyArray[storyLineNumber].choice2, for: .normal)
    }
    
}


//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLbl: UILabel!
    
    @IBOutlet weak var trueBtn: UIButton!
    @IBOutlet weak var falseBtn: UIButton!
    
    
    let quiz = [
        ["Four + Two is equal to Six.", "True"],
        ["Five - Three is greater that One.", "True"],
        ["Three + Eight is less that Ten.", "False"]
    ]
    
    var questionNumber = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    
    @IBAction func answerBtnWasPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let acualAnswer = quiz[questionNumber][1]
        if userAnswer == acualAnswer {
            print("Right")
        }else {
            print("Wrong")
        }
        
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        }else {
            questionNumber = 0
        }
        
        updateUI()

        
    }
    
    func updateUI() {
        questionLbl.text = quiz[questionNumber][0]
    }
    

}


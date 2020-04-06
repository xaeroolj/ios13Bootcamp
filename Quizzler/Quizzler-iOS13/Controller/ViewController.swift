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
    
    @IBOutlet weak var scoreLbl: UILabel!
    
    var quizBrain = QuizBrain()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    
    @IBAction func answerBtnWasPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
//        let acualAnswer = quiz[questionNumber].answer
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        if userGotItRight {
//            print("Right")
            sender.backgroundColor = UIColor.green
        }else {
//            print("Wrong")
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)

        
    }
    
    @objc func updateUI() {
        self.questionLbl.text = quizBrain.getQuestionText()
        self.progressBar.progress = quizBrain.getProgress()
        
        self.scoreLbl.text = "Score: \(quizBrain.getScore())"
        
        self.trueBtn.backgroundColor = UIColor.clear
        self.falseBtn.backgroundColor = UIColor.clear
        
        
    }
    

}


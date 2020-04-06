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
        "Four + Two is equal to Six.",
        "Five - Three is greater that One.",
        "Three + Eight is less that Ten."
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLbl.text = quiz[0]
    }
    
    
    @IBAction func answerBtnWasPressed(_ sender: UIButton) {
        
    }
    

}


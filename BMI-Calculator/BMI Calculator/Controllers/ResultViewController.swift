//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Roman Trekhlebov on 13.04.2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var advaceLabel: UILabel!
    
    var bmiValue: String?
    var color: UIColor?
    var advice: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        advaceLabel.text = advice
        self.view.backgroundColor = color

        
    }
    @IBAction func recalculatedWasPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

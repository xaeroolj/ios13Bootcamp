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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue ?? "00.0"

        
    }
    @IBAction func recalculatedWasPressed(_ sender: UIButton) {
    }
    
}

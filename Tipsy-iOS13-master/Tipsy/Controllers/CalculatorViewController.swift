//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    //Vars
    var selectedTipPct: Double = 0.0
    
    
    //Outlets
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    
    
    //Actions
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        let labelText = sender.titleLabel?.text ?? ""
        if labelText == "0%" {
            selectedTipPct = 0.0
            zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
            
        } else if labelText == "10%"{
            selectedTipPct = 0.1
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = true
            twentyPctButton.isSelected = false
        } else {
            selectedTipPct = 0.2
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = true
        }
    
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
    
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print(String(format: "%0.1f", selectedTipPct))
    }
    


}


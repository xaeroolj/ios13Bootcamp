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
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        let labelText = sender.titleLabel?.text ?? "0%"
        selectedTipPct = Double(labelText.dropLast())! / 100
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
    
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print(selectedTipPct)
    }
    


}


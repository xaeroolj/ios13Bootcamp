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
    var numberOfPeople = 2
    
    
    
    //Outlets
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    
    //Actions
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        billTextField.endEditing(true)
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        let labelText = sender.titleLabel?.text ?? "0%"
        selectedTipPct = Double(labelText.dropLast())! / 100
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        numberOfPeople = Int(sender.value)
        splitNumberLabel.text = String(numberOfPeople)
    
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        if let bill = Double(billTextField.text!) {
            let billPerPerson = (bill + (bill * selectedTipPct)) / Double(numberOfPeople)
            print(String(format: "%.2f", billPerPerson))
            
        } else {
            print("Enter correct Bill value")
        }
        
    }


}


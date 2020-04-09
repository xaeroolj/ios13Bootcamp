//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //IBOutlets
    
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func heightSliderDidChanged(_ sender: Any) {
        let slider = sender as! UISlider
        
        let formatter = NumberFormatter()
        formatter.numberStyle = NumberFormatter.Style.decimal
        formatter.roundingMode = NumberFormatter.RoundingMode.halfUp
        formatter.maximumFractionDigits = 2

        let roundedValue = formatter.string(from: NSNumber(value: slider.value))

        
//        print(roundedValue!)
        heightLbl.text = "\(roundedValue!)m"
    }
    
    @IBAction func weightSliderDidChanged(_ sender: UISlider) {
        
        
//        print(String(format: "%.0f", sender.value))
//        print(Int(sender.value))
        weightLbl.text = "\(Int(sender.value))kg"
    }
    

}


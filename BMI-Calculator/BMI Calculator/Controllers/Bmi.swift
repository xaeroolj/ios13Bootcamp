//
//  Bmi.swift
//  BMI Calculator
//
//  Created by Roman Trekhlebov on 17.04.2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct Bmi {
    let value: Float
    let advice: String
    let color: UIColor
    
    init(value: Float) {
        self.value = value
        if value < 18.5 {
            self.advice = "Eat more pies!"
            self.color = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
            
        }else if value < 24.9 {
            self.advice = "Fit as fiddle!"
            self.color = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
            
        }else {
            self.advice = "Eat less pies!"
            self.color = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
            
        }
    }
}

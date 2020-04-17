//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Roman Trekhlebov on 17.04.2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float = 0.0

    mutating func calculateBMI(height: Float, weight: Float ) {
        self.bmi = weight /  pow(height, 2)
    }
    
    func getBMIValue() -> String {
        
        return String(format: "%.1f", bmi)

    }
}

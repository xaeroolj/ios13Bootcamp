//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Roman Trekhlebov on 17.04.2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit


struct CalculatorBrain {
    
    var bmi: Bmi?
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Error value"
    }
    func getColor() ->  UIColor {
        return bmi?.color ?? UIColor.black
    }

    mutating func calculateBMI(height: Float, weight: Float ) {
        let bmiValue = weight /  pow(height, 2)
        bmi = Bmi(value: bmiValue)
    }
    
    func getBMIValue() -> String {
        
        return String(format: "%.1f", bmi?.value ?? 0.0)

    }
}

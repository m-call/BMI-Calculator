//
//  CalculatorLogic.swift
//  BMI Calculator
//
//  Created by Michael Callahan on 3/9/22.
//

import Foundation

struct CalculatorLogic {
    
    var bmi: Float?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = weight / pow(height, 2)
    }
    
    func getBMIValue() -> String {
        let bmiValue = String(format: "%.1f", bmi ?? 0.0)
        return bmiValue
    }
    
}

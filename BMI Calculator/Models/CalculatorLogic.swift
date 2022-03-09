//
//  CalculatorLogic.swift
//  BMI Calculator
//
//  Created by Colleen Callahan on 3/9/22.
//

import Foundation

struct CalculatorLogic {
    
    var bmi: Float = 0.0
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = weight / pow(height, 2)
    }
    
    func getBMIValue() -> String {
        let bmiValue = String(format: "%.1f", bmi)
        return bmiValue
    }
    
}

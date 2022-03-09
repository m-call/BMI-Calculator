//
//  CalculatorLogic.swift
//  BMI Calculator
//
//  Created by Michael Callahan on 3/9/22.
//

import UIKit

struct CalculatorLogic {
    
    var bmi: BMI?
    var lowBMI = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
    var regBMI = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
    var highBMI = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiCalculated = weight / pow(height, 2)
        
        if bmiCalculated < 18.5 {
            bmi = BMI(value: bmiCalculated, advice: "Eat more calories!", color: lowBMI)
        } else if bmiCalculated < 24.9 {
            bmi = BMI(value: bmiCalculated, advice: "Fit as a fiddle!", color: regBMI)
        } else {
            bmi = BMI(value: bmiCalculated, advice: "Eat less calories!", color: highBMI)
        }
    }
    
    func getBMIValue() -> String {
        let bmiValue = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiValue
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Oh no something went wrong!"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.red
    }
    
}

//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Vitali Kupratsevich on 7.03.25.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String {
        String(format: "%.1f", bmi?.value ?? 0.0)
    }
    func getAdvice() -> String {
        bmi?.advice ?? "No advice"
    }
    func getColor() -> UIColor {
        bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.2232572115, green: 0.5622541521, blue: 1, alpha: 1) )
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.4475820661, green: 0.9158853889, blue: 0.522190094, alpha: 1) )
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less piss!", color: #colorLiteral(red: 1, green: 0.06422093531, blue: 0.3465909091, alpha: 1) )
        }
    }
}

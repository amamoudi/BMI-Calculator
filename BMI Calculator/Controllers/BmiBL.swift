//
//  BmiBL.swift
//  BMI Calculator
//
//  Created by Abdulrahman Al-amoudi on 29/07/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct BmiBl {
//    var bmi = Bmi(bmiValue: <#String#>, Color: <#UIColor#>, advice: <#String#>)
    var bmi :Bmi?
    
//    func getBMI(height: Float, weight: Float) -> String  {
//
//        return String(format: "%.2f", weight / powf(height, 2))
//    }
    
    mutating func getBmiDetils(height: Float, weight: Float) {
        let bmiRs = weight / powf(height, 2)
        print (String(format: "%.2f", bmiRs ))
        let bmiValue = String(format: "%.2f", bmiRs )
//        print(bmi?.bmiValue)
        
        if bmiRs < 18.5
        {
            
            bmi = Bmi(bmiValue: bmiValue, Color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), advice: "Under weight")
        }else if bmiRs <= 24.0 {
     
            bmi = Bmi(bmiValue: bmiValue, Color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), advice: "Normal")
        }else if bmiRs > 24.9{

            bmi = Bmi(bmiValue: bmiValue, Color: #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1), advice: "Over weight")
        }
    }
}

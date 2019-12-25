//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Álvaro Santillan on 11/17/18.
//  Copyright © 2018 Álvaro Santillan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func bmiCalculate (hight: Double, weight: Double) -> String {
        let bmi = weight / pow(hight, 2)
        var interpretation = ""
        
        let shortbmi = String(format: "%.2f", bmi)

        if bmi > 25 {
            interpretation = "You are overweight"
        } else if bmi > 18.5 {
            interpretation = "You at a normal weight"
        } else {
            interpretation = "You are under weight"
        }
        
        return "Your BMI is " + String(shortbmi) + " and " + interpretation
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var bmiResult = bmiCalculate (hight: 1.8, weight: 63)
        print(bmiResult)
    }
}


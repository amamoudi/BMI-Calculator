//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var bmiResult : String?
    var bmiTe = BmiBl()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //test the view did load
    }
    @IBAction func heightSlider(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
        
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
//        let bmi = weight / powf(height, 2)
        bmiTe.getBmiDetils(height: height, weight: weight)
        bmiResult = bmiTe.bmi?.bmiValue ?? "0.0"
        
//        let SecondVc = SecondViewController()
//        SecondVc.bmi = String(format: "%.2f", bmi)
//        self.present(SecondVc, animated: true, completion: nil)
        
        self.performSegue(withIdentifier: "GoToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToResult"
        {
            let destinationVC = segue.destination as! BmiViewController
            destinationVC.bmiValue = bmiResult
            destinationVC.bmiColor = bmiTe.bmi?.Color
            destinationVC.bmiAdvire = bmiTe.bmi?.advice
        }
        
    }
    
    
}


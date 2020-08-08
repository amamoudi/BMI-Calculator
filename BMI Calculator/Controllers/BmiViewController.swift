//
//  BmiViewController.swift
//  BMI Calculator
//
//  Created by Abdulrahman Al-amoudi on 29/07/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class BmiViewController: UIViewController {
    @IBOutlet weak var bmiValueLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    var bmiValue :String?
    var bmiColor :UIColor?
    var bmiAdvire :String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiValueLabel.text = bmiValue
        view.backgroundColor = bmiColor!
        adviceLabel.text = bmiAdvire!

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

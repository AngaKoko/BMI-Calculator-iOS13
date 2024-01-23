//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var userHeight: UILabel!
    @IBOutlet weak var userWeight: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func weightSliderChanged(_ sender: UISlider) {
        userWeight.text = "\(Int(sender.value))kg"
    }
    
    @IBAction func heightSliderChange(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        userHeight.text = height+"m"
    }
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        
        let bmi = (weightSlider.value / (heightSlider.value * heightSlider.value))
        let resultVC = ResultViewController()
        //resultVC.bmiLabel.text = String(format: "%.1f", bmi)
        //self.present(resultVC, animated: true, completion: nil)
    }
}


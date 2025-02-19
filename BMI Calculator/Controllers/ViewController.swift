//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func heightSliderHandler(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2fm", sender.value)
    }

    @IBAction func weightSliderHandler(_ sender: UISlider) {
        weightLabel.text = String(format: "%.1fkg", sender.value)
    }
}


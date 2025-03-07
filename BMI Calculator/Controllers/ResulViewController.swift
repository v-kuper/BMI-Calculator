//
//  ResulViewController.swift
//  BMI Calculator
//
//  Created by Vitali Kupratsevich on 6.03.25.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

class ResulViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?

    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculatePress(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}

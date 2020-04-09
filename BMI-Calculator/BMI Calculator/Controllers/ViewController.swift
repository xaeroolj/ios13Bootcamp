//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func heightSliderDidChanged(_ sender: Any) {
        let slider = sender as! UISlider
        print(slider.value)
    }
    
    @IBAction func weightSliderDidChanged(_ sender: Any) {
        
        let slider = sender as! UISlider
        print(slider.value)
    }
    

}


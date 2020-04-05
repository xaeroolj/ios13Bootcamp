//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft" : 5,
                    "Medium" : 7,
                    "Hard" : 12]


    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        
//        print(eggTimes[hardness]!)
        countdownStart(eggTimes[hardness]! * 60)
        
    }
    
    func countdownStart(_ seconds: Int) {
        var secondsLeft = seconds
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
            if secondsLeft == 0 {
                print(secondsLeft)
                timer.invalidate()
            }else {
                print(secondsLeft)
                secondsLeft -= 1
            }
            
            
        }
    }
}

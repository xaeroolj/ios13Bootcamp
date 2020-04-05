//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainLbl: UILabel!
    
    let eggTimes = ["Soft" : 5,
                    "Medium" : 7,
                    "Hard" : 12]
    var timer = Timer()


    @IBAction func hardnessSelected(_ sender: UIButton) {
        mainLbl.text = "How do you like your eggs?"
        let hardness = sender.currentTitle!
        
//        print(eggTimes[hardness]!)
        timer.invalidate()
//        countdownStart(eggTimes[hardness]!)
        countdownStart(eggTimes[hardness]! * 60)

        
    }
    
    func countdownStart(_ seconds: Int) {
        var secondsLeft = seconds
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
            if secondsLeft == 0 {
                self.mainLbl.text = "Done"
                print(secondsLeft)
                timer.invalidate()
            }else {
                print(secondsLeft)
                secondsLeft -= 1
            }
            
            
        }
    }
}

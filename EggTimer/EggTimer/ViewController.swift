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
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes = ["Soft" : 5,
                    "Medium" : 7,
                    "Hard" : 12]
    var timer = Timer()
    var progressStep: Float = 0.01
    var progress: Float = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.progress = 0
    }

    @IBAction func hardnessSelected(_ sender: UIButton) {
        mainLbl.text = "How do you like your eggs?"
        progressBar.progress = 0
        let hardness = sender.currentTitle!
        
//        print(eggTimes[hardness]!)
        timer.invalidate()
        let seconds = eggTimes[hardness]! * 60
//        let seconds = eggTimes[hardness]!
        progressStep = 1.00 / Float(seconds)
        progress = 0.0
        
        countdownStart(seconds)

        
    }
    
    func countdownStart(_ seconds: Int) {
        var secondsLeft = seconds
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
            
            
            if secondsLeft == 0 {
                self.mainLbl.text = "Done"
                self.progress = 1.0
                print(self.progress)
                self.progressBar.progress = self.progress
                print(secondsLeft)
                timer.invalidate()
            }else {
                print(secondsLeft)
                print(self.progress)
                self.progressBar.progress = self.progress
                self.progress += self.progressStep
                secondsLeft -= 1
            }
            
            
           
        }
    }
}

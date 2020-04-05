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
    var totalTime = 0
    var secondsPassed = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.progress = 0
    }

    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        progressBar.progress = 0
        let hardness = sender.currentTitle!
        mainLbl.text = hardness
        timer.invalidate()
        let seconds = eggTimes[hardness]! * 60
//        let seconds = eggTimes[hardness]!
        totalTime = seconds
        secondsPassed = 0
        
        countdownStart(seconds)

        
    }
    
    func countdownStart(_ seconds: Int) {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
            print(self.secondsPassed)
            if self.secondsPassed < self.totalTime {
                let percentageProgress = Float(self.secondsPassed) / Float(self.totalTime)
                
                self.progressBar.progress = percentageProgress
                
                self.secondsPassed += 1
                
            }else {
                timer.invalidate()
                self.progressBar.progress = 1.0
                self.mainLbl.text = "Done"
            }
        }
    }
}

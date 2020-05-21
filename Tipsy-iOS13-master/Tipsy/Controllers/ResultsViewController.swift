//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Roman Trekhlebov on 17.04.2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    //Iboutlets
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    //Variebales
    var total: Double!
    var numberOfPerson: Int!
    var tipPct: Double!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = String(format: "%0.2f", total)
        let settingsString = "Split between \(numberOfPerson!) people, with \(Int(tipPct * 100))% tip."
        
        settingsLabel.text = settingsString

        // Do any additional setup after loading the view.
    }

    //ibActions
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

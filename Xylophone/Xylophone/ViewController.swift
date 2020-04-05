//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    
    var playerBig: AVAudioPlayer?
    var player: AVAudioPlayer!

    //More functionality (can play sound ion silent mode)
    func playSoundBig() {
        guard let url = Bundle.main.url(forResource: "C", withExtension: "wav") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.wav.rawValue)
            
            guard let player = player else { return }
            player.play()
        } catch {
            print(error.localizedDescription)
        }
    }
    
    //will not work in silent mode
    func playSound(_ soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    
    @IBAction func keyPressed(_ sender: UIButton) {
//        print(sender.currentTitle!)
        playSound(sender.currentTitle!)
        sender.layer.opacity = 0.5
//        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { (_) in
//            sender.layer.opacity = 1
//        }
        
        //Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
        }
    }
    
}


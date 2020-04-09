//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    var storyNumber = 0
    
    let stories = [
        Story(title: "You see a fork in the road.", choice1: "Take a left.",
        choice2: "Take a right."),
        Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
        Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")
    ]
    
    mutating func nextStory(_ userChoice:String) {
        //Optional line
        guard storyNumber == 0 else {return}
        
        switch userChoice {
        case "Take a left.":
            //choice 1
            storyNumber = 1
        case "Take a right.":
            //choice 2
            storyNumber = 2
        default:
            fatalError("Wrong choice.")
        }
    }
    
}


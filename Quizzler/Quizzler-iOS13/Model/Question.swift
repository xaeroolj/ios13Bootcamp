//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Roman Trekhlebov on 06.04.2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let variants: [String]
    let answer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        variants = a
        answer = correctAnswer
    }
}

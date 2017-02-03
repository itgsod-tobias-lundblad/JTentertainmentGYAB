//
//  Question.swift
//  Qup
//
//  Created by Tobias Lundblad on 2017-02-02.
//  Copyright © 2017 Quizz. All rights reserved.
//

import Foundation
import UIKit

class Question {
    let question: String
    let image: UIImage?
    let option1: String
    let option2: String
    let option3: String
    let option4: String
    let correctAnswer: String
    init(question: String, image: UIImage?, option1: String, option2: String, option3: String, option4: String, correctAnswer: String) {
        self.question = question
        self.image = image
        self.option1 = option1
        self.option2 = option2
        self.option3 = option3
        self.option4 = option4
        self.correctAnswer = correctAnswer 
    }
}

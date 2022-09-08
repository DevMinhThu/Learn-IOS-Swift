//
//  Questions.swift
//  Quizzler-MultipleChoice
//
//  Created by Vũ Minh Thư on 07/09/2022.
//

import Foundation

struct Question {
    let text: String
    
    let answers: [String]
    let rightAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answers = a
        rightAnswer = correctAnswer
    }
}

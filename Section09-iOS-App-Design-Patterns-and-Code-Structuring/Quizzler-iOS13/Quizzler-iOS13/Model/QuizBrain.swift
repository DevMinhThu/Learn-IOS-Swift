//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Vũ Minh Thư on 06/09/2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    // tạo ra trong struct và không thể thay đổi được
    let quiz = [
        Question(q: "A slug's blood is green.", a: "True"),
        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    ]
    
    // tạo ra trong struct và không thể thay đổi được
    var numberQuestion = 0
    var score = 0
    
    /*
        - Hàm này làm thay đổi trạng thái (làm thay đổi thuộc tính numberQuestion ) của struct.
        - Hàm này làm thuộc tính numberQuestion tăng lên 1 đơn vị.
        - Trong khi struct là bất biến => phải sử dụng mutating để khắc phục lỗi bất biến của hàm.
     
    */
    mutating func nextQuestion() {
        if numberQuestion + 1 < quiz.count {
            numberQuestion += 1
        }   else {
            numberQuestion = 0
            score = 0
        }
    }
    
    mutating func checkAnswer(_ answerUser: String) -> Bool {
        if answerUser == quiz[numberQuestion].answer {
            // correct
            score += 1
            return true
        } else {
            // wrong
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[numberQuestion].text
    }
    
    func getProgress() -> Float {
        let progress = Float(numberQuestion + 1) / Float(quiz.count)
        return progress
    }
    
    func getScore() -> Int {
        return score
    }
}

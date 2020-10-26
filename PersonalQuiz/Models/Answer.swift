//
//  Answer.swift
//  PersonalQuiz
//
//  Created by Егор Скрутелев on 22.10.2020.
//

struct Answer {
    let text: String
    let type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "Dog description."
        case .cat:
            return "Cat description."
        case .rabbit:
            return "Rabbit description."
        case .turtle:
            return "Turtle description."
        }
    }
}

//
//  ResultsViewController.swift
//  PersonalQuiz
//
//  Created by Егор Скрутелев on 26.10.2020.
//

import UIKit

class ResultsViewController: UIViewController {
    
    // 1. Передать сюда массив с ответами
    // 2. Определить наиболее часто встречающийся тип животного
    // 3. отобразить результаты на экране
    // 4. Избавиться от кнопки возврата на предыдущий экран
    
    @IBOutlet var petsNameLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    var resultAnswers: [Answer]!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        returnPets(from: resultAnswers)
    }
    
    private func returnPets(from result: [Answer]) {
        var programResult = [AnimalType: Int]()
        
        var count = 0
        
        result.forEach{ (typeAnimal) in
            for animal in result {
                if typeAnimal.type == animal.type {
                    count+=1
                    programResult[typeAnimal.type] = count
                }
            }
            count = 0
        }
        
        let animalSortDict = programResult.sorted { $0.value > $1.value }
        
        let animal = animalSortDict.first?.key.rawValue ?? " "
                petsNameLabel.text = "Вы - \(animal)"
                descriptionLabel.text = animalSortDict.first?.key.definition
    }
}

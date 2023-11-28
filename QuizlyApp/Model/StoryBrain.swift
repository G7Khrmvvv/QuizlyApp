//
//  StoryBrain.swift
//  QuizlyApp
//
//  Created by imac on 27.11.2023.
//
import UIKit
import Foundation

struct StoryBrain{
    
    var storyNumber = 0
    
    let storiesArray = [
        Story(title: "Окрошка", choise1: "С кефиром", choise2: "С квасом", choise1Destination: 1, choise2Destination: 1),
        Story(title: "Столица Канады", choise1: "Оттава", choise2: "Торонто", choise1Destination: 2, choise2Destination:2),
        Story(title: "Who are you?", choise1: "я консерватор", choise2: "я либерал", choise1Destination: 3, choise2Destination: 3),
        Story(title: "Who are you?", choise1: "я коммунист", choise2: "я демократ", choise1Destination: 4, choise2Destination: 4),
        Story(title: "Поздравляю, вы корпус", choise1: "ок", choise2: "ок", choise1Destination: 4, choise2Destination: 4)
    ]
    
    mutating func nextStory(UserChoise: String) {
        let current = storiesArray[storyNumber]
        if UserChoise == current.choise1 {
            storyNumber = current.choise1Destination
        } else {
            storyNumber = current.choise2Destination
        }
        if storiesArray.count == storyNumber{
            
        }
    }
    func getStory() -> Story {
        return storiesArray[storyNumber]
    }
}





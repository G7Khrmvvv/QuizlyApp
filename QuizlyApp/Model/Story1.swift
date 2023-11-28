//
//  Story.swift
//  QuizlyApp
//
//  Created by imac on 27.11.2023.
//

import Foundation

struct Story {
    var title: String
    var choise1: String
    var choise2: String
    let choise1Destination: Int
    let choise2Destination: Int
    
    init(title: String, choise1: String, choise2: String, choise1Destination: Int, choise2Destination: Int) {
        self.title = title
        self.choise1 = choise1
        self.choise2 = choise2
        self.choise1Destination = choise1Destination
        self.choise2Destination = choise2Destination
    }
}


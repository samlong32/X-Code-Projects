//
//  player.swift
//  Score Keeper
//
//  Created by sam long on 11/12/23.
//

import Foundation

struct Player {
    var name: String
    var stepperValue: Double
    var score: Int
   
    init(name: String, stepperValue: Double, score: Double) {
        self.name = name
        self.stepperValue = stepperValue
        self.score = Int(score)
    }
}
    

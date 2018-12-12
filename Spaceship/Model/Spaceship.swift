//
//  Spaceship.swift
//  Spaceship
//
//  Created by Balmes Pavlov on 12/11/18.
//  Copyright © 2018 Balmes Pavlov. All rights reserved.
//

import Foundation

class Spaceship {
    let name: String
    var health: Int
    var position: Int
    
    init(name: String, health: Int, position: Int) {
        self.name = name
        self.health = health
        self.position = position
    }
    
//    func moveLeft() {
//        position -= 1
//    }
//    
//    func moveRight() {
//        position += 1
//    }
    
    func wasHit() {
        health -= 5
    }
}


//
//  Pokemon.swift
//  UnitTestPractice3
//
//  Created by macbook on 13.11.17.
//  Copyright © 2017 Andersen. All rights reserved.
//

import Foundation

class Pokemon {
    
    var health: Int = 100
    var type: PokemonType
    var attackType: PokemonAttackType
    
    init(type: PokemonType, attackType: PokemonAttackType) {
        self.type = type
        self.attackType = attackType
    }
    
    func attack(enemy: Pokemon) {
        
        var damage = 30
        
        if enemy.type == .Fire && attackType == .Water {
            damage = 60
        }
        
        if enemy.type == .Water && attackType == .Fire {
            damage = 10
        }
        
        enemy.health = enemy.health - damage
    }
}

enum PokemonType {
    case Neutral
    case Fire
    case Water
}

enum PokemonAttackType {
    case Normal
    case Fire
    case Water
}

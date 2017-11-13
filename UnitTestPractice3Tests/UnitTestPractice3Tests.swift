//
//  UnitTestPractice3Tests.swift
//  UnitTestPractice3Tests
//
//  Created by macbook on 13.11.17.
//  Copyright © 2017 Andersen. All rights reserved.
//

import XCTest
@testable import UnitTestPractice3

class UnitTestPractice3Tests: XCTestCase {
    
    var squirtle: Pokemon!
    var charmander: Pokemon!
    var psyduck: Pokemon!
    
    override func setUp() {
        super.setUp()
        
        squirtle = Pokemon(type: .Water, attackType: .Water)
        charmander = Pokemon(type: .Fire, attackType: .Fire)
        psyduck = Pokemon(type: .Water, attackType: .Water)
    }
    
    override func tearDown() {
        super.tearDown()
        
        squirtle = nil
        charmander = nil
        psyduck = nil
    }
    
    func testDamage() {
        squirtle.attack(enemy: charmander)
        squirtle.attack(enemy: psyduck)
        XCTAssert(charmander.health < psyduck.health)
    }
    
}

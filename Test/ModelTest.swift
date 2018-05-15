//
//  ModelTest.swift
//  Test
//
//  Created by Benjamin Ulrich on 3/16/18.
//  Copyright © 2018 Benjamin Ulrich. All rights reserved.
//

import Foundation

class ModelTest: NSObject {
    static var count = 0 //Number of cookies
    static var perClick = 1 //Number of cookies per click
    static var perSecond = 0 //Number of cookies per second
    private static var indexOfPressList = 0
    static let lengthOfList = 20
    
    static func reset() {
        count = 0
        perClick = 1
        perSecond = 0
    }
    
    static func add(x: Int) {
        count += x
    }
    
    static func subtract(x: Int) {
        count -= x
    }
    
    static func change_perClick(x: Int) {
        perClick += x
    }
    
    static func returnIndex() -> Int {
        indexOfPressList += 1
        return (indexOfPressList - 1) % lengthOfList
    }
    
    
    
    
    
}

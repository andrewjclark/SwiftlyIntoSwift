//
//  Person.swift
//  SwiftlyIntoSwift2
//
//  Created by Andrew J Clark on 26/07/2016.
//  Copyright © 2016 Very Tiny Machines. All rights reserved.
//

import Foundation

class Person: CustomStringConvertible { // This is a Person class, containing some variables (aka. Properties) pertinent to a person. This class also conforms to the CustomStringConvertible protocol.
    
    // Here we declare our properties and give them some default values.
    var name = "Unknown"
    var year = 1900
    var hasPassport = false
    var gender: Character = "F"
    var distanceFromHome = 0.0
    
    var description: String { // The CustomStringConvertible protocol lets us add this description var (which is a bit like a function) that returns some of our properties. So, when the program needs to print this Person it will use this string.
        return "\(name): \(year) \(gender) \(hasPassport)"
    }
    
    // This is a function (func) that takes the current year as an argument, looks at this Person's year (of birth) and returns whether or not they are an adult (as a bool).
    
    func isAdult(currentYear: Int) -> Bool {
        if currentYear - self.year >= 18 {
            return true
        } else {
            return false
        }
    }
    
    // This func
    
    func canEnterLondon() -> Bool {
        if self.isAdult(2016) && hasPassport == true {
            return true
        } else {
            return false
        }
    }
    
    // This default initialiser allows us to initialise a person with Person()
    init () {
        
    }
    
    // This convenience initialiser gives us a convenient method to initialise a person along with some default values. Ie: Person(name: "Eddie", year: 1995, gender: "M", hasPassport: true)
    init (name: String, year: Int, gender: Character, hasPassport: Bool) {
        self.name = name
        self.year = year
        self.gender = gender
        self.hasPassport = hasPassport
    }
}
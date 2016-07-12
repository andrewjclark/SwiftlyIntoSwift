// Swiftly Into Swift: Let's Make A Simple iOS App!

import UIKit


// Variables

// let = declare a static variable
// var = declate a variable that can change

var name = "AJC"
var year = 1987
var hasPassport = true
var gender: Character = "M"
var distanceFromHome = 15000.25

print("Name: \(name)  Year: \(year)   HasPassport: \(hasPassport)")

year = year + 1000

year += 1000

name += " (remote worker, gender: \(gender))"


// Methods and Conditions

// == equal to
// > greater than
// < less than
// >= greater than or equal to
// <= less than or equal to
// != not equal to

// && requires both conditions to be true
// || requires either condition to be true

if 2016 - year >= 18 {
    print("This person is an adult")
} else if 2016 - year <= 2 {
    print("This person is a baby")
} else {
    print("Not old enough")
}

if hasPassport {
    print("Great! Come on in")
} else {
    print("How did you even get here?")
}

if name.containsString(" ") {
    print("Uh oh - this name contains a space")
}

print(name)
print(name.uppercaseString) // On IBM Swift Sandbox this should be name.uppercased()
print(name.lowercaseString) // On IBM Swift Sandbox this should be name.lowercased()


// Arrays and Looping

let names:[String] = ["andrew","eddie","jenna","jacqueline"]
print(names)

print(names[0])
print(names[1])
print(names[2])

var namesThatContainJ:[String] = []

for name in names {
    print(name)
    if name.lowercaseString.containsString("j") { // On IBM Swift Sandbox this should be name.lowercased()
        namesThatContainJ.append(name)
    }
}


print("J check complete with \(namesThatContainJ.count) instances of J names:\n\(namesThatContainJ)") // Note that a \n inserts a "new line"

// Classes and Initialisation

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

// Let's make some People!

let firstPerson = Person()
firstPerson.name = "Andrew"
firstPerson.hasPassport = true

let secondPerson = Person()
secondPerson.name = "Fico"
secondPerson.year = 2005
secondPerson.hasPassport = true

let thirdPerson = Person(name: "Eddie", year: 1995, gender: "M", hasPassport: true)


// People are a class that can be stored in Array's

let peopleArray = [firstPerson, secondPerson, thirdPerson]

// Then we can loop through these people and do things to them. Let's check who can enter London

for somePerson in peopleArray {
    print("\(somePerson.name): \(somePerson.canEnterLondon())")
}





// Define an operator
prefix operator **

// An operator is also a function.
prefix func **(value: Int) -> Int {
    return value * value
}

var n: Int = -5
let squared: Int = **n
print("\(n) square is \(squared).")

// Another definition for prefix **
prefix func **(value: String) -> String {
    return value + " " + value
}

let concat: String = **"Warning!"
print(concat)

// Overload an operator
// Defining an operator is not required because 
// prefix ! is already defined for boolean NOT 
prefix func !(value: String) -> Bool {
    return value.isEmpty
}

let str: String = "I'm not empty."
let emptyness: Bool = !str
print("The sample string is empty: \(emptyness).")

// Postfix 
postfix operator **
postfix func **(value: Int) -> Int {
    return value + value
}

n = 10
let doubled: Int = n**
print("Doubled \(n) is \(doubled).")

// We defined ** as both prefix and postfix. 
// Postfix has precedence over prefix
import Foundation  // Need for `String.contains`

let squaredDouble: Int = **n**
print("Dobuled and next squared: \(squaredDouble).")

// Infix
infix operator ** : MultiplicationPrecedence
func ** (lhs: String, rhs: String) -> Bool {  // `infix` modifier not allowed.
    return lhs.contains(rhs)
}

let s1: String = "Hello world"
let s2: String = "world"
let isSubstring: Bool = s1 ** s2
print("\(s1) contains \(s2).")

// Defining operator for struct and class
class Car {
    var year: Int
    var model: String

    init (year: Int, model: String) {
        self.year = year
        self.model = model
    }

    static func ==(lhs: Car, rhs: Car) -> Bool {
        return lhs.model == rhs.model
    }
}

infix operator ==


let myCar: Car = Car(year: 1997, model: "K5")
let yourCar: Car = Car(year: 2007, model: "K5")
print("Your car and my car are the same model: \(myCar == yourCar).")

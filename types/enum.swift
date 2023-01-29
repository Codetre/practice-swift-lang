// enum is a user-define type whose value pool is determined by the programmer.

enum ColorScheme {
    case red
    case green
    case blue
}

var bodyColor: ColorScheme = .red
// can omit because the variable already defined as Day type.
print("I love this \(bodyColor) as my car body!")

// Items in one line
enum Binary {
    case zero, one
}
dump(Binary.zero)

// Each item in enum can have a raw value 
enum Day: String {
    case mon = "Monday"
    case tue = "Tuesday"
    case wed = "Wednesday"
    case thur = "Thursday"
    case fri = "Friday"
    case sat  // item name becomes the raw value.
    case sun = "Sunday"
}

var today: Day = Day.mon
today = .sat  
print("Today is \(today.rawValue).")

enum Rank: Int {
    case ace=1, two, three, four, five, six, seven, eight, nine, ten,
    jack, queen, king
}

var rank: Rank = .two
    
// Assigning by rawValue
rank = Rank(rawValue: 4)!
print(rank)
rank = Rank(rawValue: 11)!
print(rank)

/* Associated value
 * Both of associated and raw value cannot stand on the enum 
*/
enum Month {
    case jan(num_days: Int)
    case feb(num_days: Int)
}

var month: Month = .jan(num_days: 31)
print(month)

// Iterate over cases
enum State: String, CaseIterable {  // CaseIterable is protocol.
    case ohio = "OH"
    case alabama = "AL"
    case nevada = "NV"
}

let listedStates: [State] = State.allCases
print(listedStates)

// Recursive enumeration
enum ArithmeticExpression {
    case number(Int)  // associated value without ref name
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case subtraction(ArithmeticExpression, ArithmeticExpression)
}

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
        case .number(let value):  // Give the associated value a ref name
            return value
        case .addition(let left, let right):
            return evaluate(left) + evaluate(right)
        case .subtraction(let left, let right):
            return evaluate(left) - evaluate(right)
    }
}

let five: ArithmeticExpression = .number(5)
let six: ArithmeticExpression = .number(6)
let addExpr: ArithmeticExpression = .addition(five, six)
let result: Int = evaluate(addExpr)
print(result)

/* Comparable enumeration: make each case comparable
 * The enumeration cannot have raw value in this case
 */
enum City: Comparable {
    case seoul(population: Int)
    case busan(population: Int)
    case wonju(population: Int)
    case gangneung(population: Int)
}

let city1: City = .seoul(population: 9500480)
let city2: City = .wonju(population: 358838)
print("The area of \(city1) is larger than \(city2): \(city1 > city2).")

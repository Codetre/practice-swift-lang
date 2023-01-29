// What if other options are added later?
enum Drink {
    case coffee, tea, water, milk
}

// `switch` in Swift acts as like `break` is inserted in every case.
// You can use `break` if you want. but as mentioned, it's optional.
var choice: Drink = .milk
switch choice {
    case .water:
    print("1 dollar.")
    fallthrough
    case .tea:
    print("2 dollars.")
    case .coffee:
    print("3 dollars.")
    // case following `@unknown` should put at the end of the switch block
    @unknown case _:  // The compiler warns you it's not exhaustive.
    print("That sort of drink is not on our shelves.")
}

// Empty block after `case` is not allowed. At least one statement is requred.
var stake: Int = 100
switch stake {
    case 0..<2: 
    print("At least two bucks to join in the game.")
    case 2:
    print("You satisfy the minimum edge.")
    case 3...9, 10...20:
    print("Your reward: +$5.")
    case 21...50:
    print("Your reward: +$50.")
    default: // All of the range in the type should be considered or error.
    print("You have the gut!")
}

var countdown: Int = 6
switch countdown {
    case 5:
    print(5)
    fallthrough
    case 4: 
    print(4)
    fallthrough
    case 3:
    print(3)
    fallthrough
    case 2:
    print(2)
    fallthrough
    case 1:
    print(1)
    fallthrough
    case 0:
    print("Bang!")
    default:
    print("Out of range")
}

// switch and wildcard identifier
typealias PersonalInfo = (name: String, age: Int)
var info: PersonalInfo = (name: "Jimmy", age: 24)
switch info {
    case (name: "Jimmy", age: 23):
    print("That's our man.")
    case (name: _, age: 23):
    print("You got only age.")
    case (name: "Jimmy", age: _):
    print("You got only name.")
    case (name: _, age: _): // or you can use `default` instead.
    print("I don't know.")
}

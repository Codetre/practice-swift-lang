var people: [String: Int] = [
    "Jimmy": 23, 
    "Darton": 31,
]

// The parenthesis around `name, age` is mandatory.
for (name, age) in people {
    print("name: \(name), age: \(age)")
}

// while 
var names: [String] = [
    "Jimmy", "Darton", "Carmen"]
while !names.isEmpty {
    let name = names.removeFirst()
    print("Goodbye, \(name)!")
}

// keyword `do` is used in other situations in Swift.
var countdown: Int = 5
repeat {
    print(countdown)
    countdown -= 1
} while countdown > 0
print("Bang!")

// Labeled statement: break, continue
var quit: Bool = false
var patience: Int = 11
var consume: Int = 1
tartaros: while true {
    if patience <= 0 {
        quit = true
    }
    workhour: for _ in 9..<18 {
        if quit == true {
            print("I quit.")
            break tartaros
        } else if patience < 9 {
            consume = 2
            continue workhour
        } else {
            print("Not yet.")
        }
    }
    patience -= consume
}
print("I'm free.")

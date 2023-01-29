extension Int {
    // `Int` is a struct, and struct is a value type which requires `mutating`.
    mutating func square() {
        self = self * self
    }
}

var number = 3
print("Number: \(number)")
number.square()
print("Number after squaring: \(number)")

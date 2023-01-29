func absolute(num: Int) -> Int {
    num > 0 ? num : -num
}

let num: Int = -3
print("Absolute of \(num): \(absolute(num: num))")


// Function with argument label
func absolute(of num: Int) -> Int {
    num > 0 ? num : -num
}

print("Absolute of \(num): \(absolute(of: num))")

// Call function with positional arguments
func add(_ n1: Int, _ n2: Int) -> Int {
    n1 + n2
}

let n1: Int = 3
let n2: Int = 5
print("\(n1) + \(n2) = \(add(n1, n2))")


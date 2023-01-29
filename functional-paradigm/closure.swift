// Callable code building block
let numbers = [0, 1, 2, 3, 4]

var tripled = numbers.map({(n: Int) -> Int in
   n * 3})

// Short 1
tripled = numbers.map({ n in
    n * 3})
print(tripled)

// Short 2
tripled = numbers.map{ $0 * 3 }
print(tripled)

func backwards(first: String, second: String) -> Bool {
    print("Comparing \(first) and \(second).")
    return first > second
}

var names: [String] = ["Maggy", "Falcon", "Pudding"]
var sortedNames: [String] = names.sorted(by: backwards)
print(sortedNames)

sortedNames = names.sorted(by: { $0 > $1 })
print(sortedNames)

sortedNames = names.sorted(){ $0 > $1 }
print(sortedNames)

sortedNames = names.sorted(by: >)  // operator is also function.
print(sortedNames)

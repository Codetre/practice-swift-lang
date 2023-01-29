// Initialization
var initializedArray: Array<String> = ["Python", "Swift", ]
var literaledArray: [String] = ["Python", "Swift", ]
let equality: Bool = initializedArray == literaledArray
print("Arrays whose elements are the same is \(equality)")

// Ways to assign an empty array
var langs: Array<String> = Array<String>()  // Initializer
langs = [String]()  // Literal
langs = []
print("Array 'langs' is empty: \(langs.isEmpty)")

// Properties & Methods
langs.append("Shell")
langs.append(contentsOf: ["Sql", "Rust"])
langs.insert("Python", at: 0)
langs.insert(contentsOf: ["Swift",], at: langs.count)
print("Contents: \(langs), type: \(type(of: langs))")

let elemFirst: String = langs.first!
let elemLast: String = langs.last!
let posFirst: Int = langs.firstIndex(of: "Python")!
let posLast: Int = langs.lastIndex(of: "Sql")!
print("First pos: \(posFirst), Last pos: \(posLast)")
print("First elem: \(elemFirst), Last elem: \(elemLast)")

let popped: String = langs.removeLast()
print("'\(popped)' popped out from \(langs)")
let dequeued: String = langs.removeFirst()
print("'\(dequeued)' dequeued out from \(langs)")
let pos: Int = 1
let removed: String = langs.remove(at: pos)
print("You can specify the position(\(pos)) of elem to remove: \(removed)")

let range = 0...1  // [0,1]. 0..<2 if [0,2)
print("Slicing in range(\(range)): \(langs[range])")

// Shuffling
var numbers: [Int] = [0, 1, 2, 3, 4]
print("shuffled numbers: \(numbers.shuffled())")
print("Data not affected by shuffled method as you can see:  \(numbers)")

numbers.shuffle()
print("But shuffle method alter it: \(numbers)")

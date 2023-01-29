// Set: mathematical set. no order. 

// Cannot use literal because [String] is Array.
var names: Set<String> = Set<String>()

// This is Array. Type annotation is required if it is to be Set.
var ambiguous = [1, 2, 3, ]  

// Inserting and removing an element
names.insert("C++")
print(names)
var others: Set<String> = Set<String>(["Swift", "Python", "Shell"])
others.remove("Swift")
print(others)

// Set operations
var evens: Set<Int> = [0, 2, 4, 6]
var odds: Set<Int> = [1, 3, 5, 7]
var divisorsOf24: Set<Int> = [2, 3, 4, 6, 8, 12, 24]

var intersection: Set<Int> = evens.intersection(divisorsOf24)
var union: Set<Int> = evens.union(odds)
var symmetricDiff: Set<Int> = evens.symmetricDifference(divisorsOf24)
var subtract: Set<Int> = divisorsOf24.subtracting(evens)
print("Intesection: \(intersection)")
print("Union: \(union)")
print("Symmetric difference: \(symmetricDiff)")  // similar to XOR
print("Symmetric difference: \(subtract)")

// Give set order
var sorted: [Int] = union.sorted()
print("Union as set: \(union)")
print("Ordered union: \(sorted)")

// Relationship
var disjointness: Bool = evens.isDisjoint(with: odds)
print("Even and odd numbers disjoint: \(disjointness)")
var subset: Bool = intersection.isSubset(of: evens)
print("Intersection of A and B is subset of A: \(subset)")
var superset: Bool = divisorsOf24.isSuperset(of: subtract)
print("Set(A-B) is childset of A: \(superset)")
